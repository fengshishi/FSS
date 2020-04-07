package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.cz.domain.ylBook;
import com.no1.cz.service.ylBookService;

@Controller("ylBookController")
@RequestMapping(value="/book")
public class ylBookController {
	@Resource
	private ylBookService ylbookService;
	
	@RequestMapping("showList")
	public String showList(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		System.out.println("显示所有图书信息");
		PageHelper.startPage(pn, 15);
		List<ylBook> ylbookList = this.ylbookService.findAll();
		PageInfo<ylBook>  p = new PageInfo<>(ylbookList);
		model.addAttribute("ylbookList", ylbookList);
		model.addAttribute("page", p);
		return "library/showList";
	}
	
	@RequestMapping("showWriter")
	public String showWriter(@RequestParam("ylbookId") int ylbookId, Model model){
		System.out.println("进入id查询" + ylbookId);
		ylBook ylbook = this.ylbookService.findById(ylbookId);
		model.addAttribute("ylbook", ylbook);
		System.out.println("进入id查询后#&U%^&(*^)&)&_&" + ylbook);
		return "library/showWriter";
	}
	@RequestMapping("showConcern")
	public String showConcern(@RequestParam("ylbookId") int ylbookId, Model model){
		System.out.println("进入id查询" + ylbookId);
		ylBook ylbook = this.ylbookService.findById(ylbookId);
		model.addAttribute("ylbook", ylbook);
		System.out.println("进入id查询后#&U%^&(*^)&)&_&" + ylbook);
		return "library/showConcern";
	}
	
	@RequestMapping("findbyName")
	public String findbyName(Model model, HttpServletRequest request) {
		try {
			String str = request.getParameter("search");
			List<ylBook> ylbookList = this.ylbookService.findByName(str);
			model.addAttribute("ylbookList",ylbookList);
			return "library/showList";
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	
	
}
