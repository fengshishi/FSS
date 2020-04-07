package com.no1.cz.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ErrHandler {
	
	private static final Logger LOG = LoggerFactory.getLogger(ErrHandler.class);
	
	@ExceptionHandler({RuntimeException.class})
	@ResponseStatus(HttpStatus.OK)
	public ModelAndView processException(RuntimeException exception){
		LOG.info("自定义异常处理-RuntimeException");
		ModelAndView mav = new ModelAndView();
		mav.addObject("myException", exception.getMessage());
		mav.setViewName("error/500");
		return mav;
	}
	
	@ExceptionHandler({Exception.class})
	@ResponseStatus(HttpStatus.OK)
	public ModelAndView processException(Exception exception){
		LOG.info("统一异常处理-Exception");
		ModelAndView mav = new ModelAndView();
		mav.addObject("myException", exception.getMessage());
		mav.setViewName("error/500");
		return mav;
	}

}
