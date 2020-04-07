package com.no1.cz.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/web")
public class WebController {
	
	private static final Logger LOG = LoggerFactory.getLogger(WebController.class);
	
	@RequestMapping("index")
    public String index() {
		LOG.info("导航到index视图");
		return "index";
	}
	@RequestMapping("index1")
    public String index1() {
		LOG.info("导航到index视图");
		return "index1";
	}
	@RequestMapping("myindex")
    public String myindex() {
		return "myindex";
	}
	
}
