package com.no1.cz.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.no1.cz.domain.ylBookConcern;
import com.no1.cz.service.ylBookConcernService;

@Controller("ylBookConcernController")
@RequestMapping(value="/concern")
public class ylBookConcernController {
	@Resource
	private ylBookConcernService ylbookConcernService;
	
	@RequestMapping("save")
	public String save(ylBookConcern ylbookConcern, Model model) {
		try {
			this.ylbookConcernService.save(ylbookConcern);
			int ylbookId = ylbookConcern.getYlconcernBook().getYlbookId();
			model.addAttribute("ylbookId", ylbookId);
			return "redirect:/goods/showConcern";
		
		} catch (Exception e) {
			e.printStackTrace();
			return "保存失败";
		}
	}

}
