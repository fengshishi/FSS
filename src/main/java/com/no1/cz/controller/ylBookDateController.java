package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.no1.cz.domain.ylBookDate;
import com.no1.cz.service.ylBookDateService;

@Controller("ylBookDateController")
@RequestMapping("/date")
public class ylBookDateController {
	
	@Resource
	public ylBookDateService ylbookDateService;
	
	@RequestMapping("dateList")
	public String dateList(Model model) {
		System.out.println("显示所有日历信息");
		List<ylBookDate> ylbookDateList = this.ylbookDateService.findAll();
		model.addAttribute("ylbookDateList", ylbookDateList);
		return "library/dateList";
	}
	@RequestMapping("datefindById")
	public String datefindById(@RequestParam("yldateId") int yldateId, Model model){
		System.out.println("进入id查询" + yldateId);
		List<ylBookDate> ylbookDate = this.ylbookDateService.findById(yldateId);
		model.addAttribute("ylbookDate", ylbookDate);
		System.out.println("进入id查询后#&U%^&(*^)&)&_&" + ylbookDate);
		return "showdatebyId";
	}
	

}
