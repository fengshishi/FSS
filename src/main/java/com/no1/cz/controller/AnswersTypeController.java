package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.no1.cz.domain.AnswersType;
import com.no1.cz.service.AnswersTypeService;

@Controller
@RequestMapping("/type")
public class AnswersTypeController {

	@Resource private AnswersTypeService answersTypeService;

	@RequestMapping("showtype")
	@ResponseBody //
	public List<AnswersType> showtype(Model model,@RequestParam(value="antypeName",required=false) String antypeName){
		List<AnswersType> typelist=this.answersTypeService.listtype();
				model.addAttribute("typelist", typelist); 
		return typelist; 
	}

}



