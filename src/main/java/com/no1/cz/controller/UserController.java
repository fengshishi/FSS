package com.no1.cz.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.cz.domain.User;
import com.no1.cz.service.UserService;
import com.no1.cz.utils.Md5;

@Controller("UserController")
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;


	//转向登录页面
	@RequestMapping("tologin")
	public String tologin(){
		System.out.println("准备去到登录页面");
		return "user/login";				
	}

	//转向注册页面
	@RequestMapping("toregist")
	public String toregist(Model model){
		System.out.println("准备去到注册页面");
		/* model.addAttribute("currDate", new Date()); */
		return "user/regist";
	}
	//转向修改页面
	@RequestMapping("tomodifyPassword")
	public String tomodifyPassword(){
		System.out.println("准备去到修改密码页面");
		return"user/modifyPassword";
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

	//登录逻辑
	@RequestMapping("/login")
	@ResponseBody
	public String login(String userName, String userPwd,HttpServletRequest request, HttpSession session) {
		String inputVerifyCode = request.getParameter("verifyCode");
		System.out.println("用户输入的验证码值------>" + inputVerifyCode);
		String verifyCodeValue = (String) session.getAttribute("verifyCodeValue");
		System.out.println("Session中的验证码值------>" + verifyCodeValue);
		try {
			String passwordByMd5=Md5.MD5(userPwd);
			User user1=userService.login(userName, passwordByMd5);
			User user = userService.findUserId(userName);
			  session.setAttribute("user", user);
			System.out.println("登录是否获取到user1"+user1);
			if(user1!=null && verifyCodeValue.equals(inputVerifyCode.toUpperCase()) ) {
				session.setAttribute("user1", user1);
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


	/*
	 * //登录
	 * 
	 * @RequestMapping("login") public String login(String userName, String userPwd,
	 * HttpSession session){ String passwordByMd5=Md5.MD5(userPwd);
	 * if(!userName.equals("") && !passwordByMd5.equals("")){ User user1
	 * =userService.login(userName, passwordByMd5); User user =
	 * userService.findUserId(userName); session.setAttribute("user", user);
	 * if(user1 != null){ session.setAttribute("user1", user1); return "index1"; }
	 * else{ session.setAttribute("msg", "账号或密码错误"); return "user/login"; } }
	 * session.setAttribute("msg", "账号或密码为空！请重新输入！"); return "user/login"; }
	 */


	//注册
	@RequestMapping(value="regist")
	@ResponseBody
	public String regist(Model model,String userName,String userPwd,String userEmail,String userPhone,String createTime){
		System.out.println("执行注册模块");
		if(!userService.isUserExist(userName)) { 
			String passwordByMd5=Md5.MD5(userPwd);
			this.userService.regist(userName, passwordByMd5, userEmail, userPhone, createTime);
			return "succ";
		}else { 
			model.addAttribute("msg", "用户名已存在！"); 
			return "fail";
		}
	}


	//修改密码的表单提交
	@RequestMapping("modifyPassword")
	public String modifyPassword(String userName, String userPwd, String newuserPwd, Model model) {
		String passwordByMd5=Md5.MD5(userPwd);
		String newpasswordByMd5=Md5.MD5(newuserPwd);
		if (!userService.isUserExist(userName)) {
			System.out.println("11111111111111");
			model.addAttribute("msg", "用户名不存在！");
			return "user/modifyPassword";
		} else {
			if (passwordByMd5.equals(userService.getPasswordByUsername(userName))) {
				userService.modifyPasswordByUsername(userName, newpasswordByMd5);
				model.addAttribute("msg", "密码修改成功！");
				System.out.println("22222222222222222");
				return "user/modifyuccess";
			}else{
				model.addAttribute("msg", "密码错误！");
				System.out.println("333333333333333333");
				return "user/modifyPassword";
			}
		}
	}
	//退出登录
	@RequestMapping("/outUser")
	public void outUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("user1");
		response.sendRedirect("/web/index");
	}
	//展示用户所以信息
	@RequestMapping("showAllUser")
	public String showAllUser(Model model, @RequestParam(required=false, defaultValue="1", value ="pn") Integer pn) {
		System.out.println("显示所有用户信息");
		PageHelper.startPage(pn, 5);
		List<User> userList = this.userService.findAll();
		PageInfo<User> p = new PageInfo<>(userList);
		// 在这里做一下输出，查看Controller是否正确调用后台并且得到了想要的结果
		for(User user : p.getList()) {
			System.out.println(user);
		} // 测试End
		// model.addAttribute("userList", userList);
		model.addAttribute("page", p);
		return "user/showList";
	}
	//删除用户信息
	@RequestMapping("deleteUser")
	public String deleteUser(@Param("userId") int userId,Model model){
		try{
			this.userService.deleteById(userId);
			System.out.println("delete is ok");
			return "redirect:/user/showAllUser";
		}catch(Exception e){
			e.printStackTrace();
			return "刪除失敗";
		}

	} 



	//增加用户
	@RequestMapping("insert")
	public String insert(String userName,String userPwd,String userEmail, String userPhone,String createTime){
		try {
			String passwordByMd5=Md5.MD5(userPwd);
			this.userService.insert(userName, passwordByMd5, userEmail, userPhone, createTime);
			return "redirect:/user/showAllUser";

		} catch (Exception e) {
			e.printStackTrace();
			return "保存失败";
		}
	}

	//修改用户
	@RequestMapping("update")
	public String update(User user, Model model){
		try {
			this.userService.update(user);
			model.addAttribute("user", user);
			return "redirect:/user/showAllUser";

		} catch (Exception e) {
			e.printStackTrace();
			return "修改失败";
		}
	}



}
