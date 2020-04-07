package com.no1.cz.controller;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.no1.cz.domain.Business;
import com.no1.cz.service.BusinessService;
import com.no1.cz.utils.Md5;

@Controller
@RequestMapping(value = "/business")
public class BusinessController {
	@Resource
	private BusinessService businessService;
	@SuppressWarnings("unused")
	private final static Logger logger = LoggerFactory.getLogger(BusinessController.class);

	// 转向登录页面
	@RequestMapping("tologin")
	public String tologin() {
		System.out.println("准备去到登录页面");
		return "user/Businesslogin";
	}

	// 转向注册页面
	@RequestMapping("toregist")
	public String toregist(Model model) {
		System.out.println("准备去到注册页面");
		/* model.addAttribute("currDate", new Date()); */
		return "user/Businessregist";
	}
	//获取验证码
	@RequestMapping("/getVerifyCode")
	public void generate(HttpServletResponse response, HttpSession session) {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String verifyCodeValue = drawImg(output);

		session.setAttribute("verifyCodeValue", verifyCodeValue);

		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	//绘画验证码
	private String drawImg(ByteArrayOutputStream output) {
		String code = "";
		// 随机产生4个字符
		for (int i = 0; i < 4; i++) {
			code += randomChar();
		}
		int width = 70;
		int height = 25;
		BufferedImage bi = new BufferedImage(width, height,
				BufferedImage.TYPE_3BYTE_BGR);
		Font font = new Font("Times New Roman", Font.PLAIN, 20);
		// 调用Graphics2D绘画验证码
		Graphics2D g = bi.createGraphics();
		g.setFont(font);
		Color color = new Color(66, 2, 82);
		g.setColor(color);
		g.setBackground(new Color(226, 226, 240));
		g.clearRect(0, 0, width, height);
		FontRenderContext context = g.getFontRenderContext();
		Rectangle2D bounds = font.getStringBounds(code, context);
		double x = (width - bounds.getWidth()) / 2;
		double y = (height - bounds.getHeight()) / 2;
		double ascent = bounds.getY();
		double baseY = y - ascent;
		g.drawString(code, (int) x, (int) baseY);
		g.dispose();
		try {
			ImageIO.write(bi, "jpg", output);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return code;
	}

	//随机参数一个字符
	private char randomChar() {
		Random r = new Random();
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
		return s.charAt(r.nextInt(s.length()));
	}

	//商家登录
	@RequestMapping("/login")
	@ResponseBody
	public String login(String businessName, String  businessPwd,HttpServletRequest request, HttpSession session) {
		String inputVerifyCode = request.getParameter("verifyCode");
		System.out.println("用户输入的验证码值------>" + inputVerifyCode);
		String verifyCodeValue = (String) session.getAttribute("verifyCodeValue");
		System.out.println("Session中的验证码值------>" + verifyCodeValue);
		try {
			String businesspwdByMd5 = Md5.MD5(businessPwd); 
			Business business = businessService.login(businessName, businesspwdByMd5);
			System.out.println("登录是否获取到business"+business);
			Business business1 =  businessService.findBusinessId(businessName);
			session.setAttribute("business1", business1);
			if(business!=null && verifyCodeValue.equals(inputVerifyCode.toUpperCase()) ) {
				session.setAttribute("business", business);
				return "succ";
			}
			else {
				return "fail";
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			return "登录失败";
		}
	}


	/* @RequestMapping("login")
	  public String login(String businessName, String  businessPwd, HttpSession session) {
	  String businesspwdByMd5 = Md5.MD5(businessPwd); 
	  if (!businessName.equals("")  && !businesspwdByMd5.equals("")) {
		  Business business =  businessService.login(businessName, businesspwdByMd5);
		  Business business1 =  businessService.findBusinessId(businessName);
		  session.setAttribute("business1", business1); 
		  if (business != null) {
			  session.setAttribute("business", business); 
			  return "redirect:/books/find";
		  }
		  else { 
			  session.setAttribute("msg", "账号或密码错误");
			  return "user/Busindesslogin";
		  } 
	  }
	  session.setAttribute("msg", "账号或密码不为空");
	  return "user/Busindesslogin"; 
	  }
	 */


	//商家注册
	@RequestMapping(value = "regist")
	@ResponseBody
	public void regist(HttpSession session, String businessName, String businessPwd, String businessEmail,
			String businessPhone, String createTime) {
		System.out.println("执行注册模块");
		if (!businessService.isUserExist(businessName)) {
			String businesspwdByMd5 = Md5.MD5(businessPwd);
			this.businessService.regist(businessName, businesspwdByMd5, businessEmail, businessPhone, createTime);
		} else {
			session.setAttribute("msg", "用户名已存在！");
		}
	}

	//退出登录
	@RequestMapping("/outBusiness")
	public void outBusiness(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("business");
		response.sendRedirect("/web/index");
	}
}
