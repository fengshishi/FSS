package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.cz.domain.ylBook;
import com.no1.cz.domain.ylBookWriter;
import com.no1.cz.service.ylBookWriterService;

@Controller("ylBookWriterController")
@RequestMapping(value="/writer")
public class ylBookWriterController {
	@Resource
	private ylBookWriterService ylbookWriterService;
	
	@RequestMapping("showwriterList")
	public String showwriterList(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		System.out.println("显示所有作者信息");
		PageHelper.startPage(pn, 15);
		List<ylBookWriter> ylbookWriterList = this.ylbookWriterService.findAll();
		PageInfo<ylBookWriter>  p = new PageInfo<>(ylbookWriterList);
		model.addAttribute("ylbookWriterList", ylbookWriterList);
		model.addAttribute("page", p);
		return "library/showwriterList";
	}
	
	@RequestMapping("insert")
	public String insert(ylBookWriter ylbookWriter, Model model){
		try {
			this.ylbookWriterService.insert(ylbookWriter);
			model.addAttribute("ylbookWriter", ylbookWriter);
			return "redirect:/writer/showwriterList";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "保存失败";
		}
	}
	@RequestMapping("update")
	public String update(ylBookWriter ylbookWriter, Model model){
		try {
			this.ylbookWriterService.update(ylbookWriter);
			model.addAttribute("ylbookWriter", ylbookWriter);
			return "redirect:/writer/showwriterList";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "修改失败";
		}
	}

	 @RequestMapping("deleteWriter")
	   public String deleteWriter(@RequestParam("ylwriterId") int ylwriterId,Model model){
		  try{
			  this.ylbookWriterService.deleteById(ylwriterId);
			  System.out.println("delete is ok");
			  return "redirect:/writer/showwriterList";
		  }catch(Exception e){
			  e.printStackTrace();
			  return "刪除失敗";
		  }
			
	   } 
}
