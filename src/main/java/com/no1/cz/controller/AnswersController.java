package com.no1.cz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.no1.cz.domain.Answers;
import com.no1.cz.domain.User;
import com.no1.cz.service.AnswersService;

@Controller("AnswersController")
@RequestMapping("/answers")
public class AnswersController {
	
	@Resource
	private AnswersService answersService;
	
	//去我要提问的页面
	@RequestMapping("toanswers")
	public String toanswers(Model model) {
		   model.addAttribute("answersDate", new Date());
		   return "address/Answers";
	}
	
	//我要提问
	@RequestMapping("insertanswers")
	public String insertanswers(Model model, Answers answers, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		answers.setUserId(user);
		this.answersService.insertanswers(answers, userId);
		model.addAttribute("answers", answers);
		System.out.println(answers);
		return "redirect:/answers/answersList";
	}
	
	
	//获取userId查询所有问题
	@RequestMapping("answersList") 
	public String answersList(Model model, HttpServletRequest request){ 
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		List<Answers> answersList = this.answersService.answersList(userId);
		model.addAttribute("answersList", answersList);//显示我的问题
		return "address/showAnswers";
	}
}
