package com.no1.cz.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.no1.cz.domain.User;

public class UserInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		System.out.println("执行到了preHandle方法");
		System.out.println(handler); 
		User user=(User) request.getSession().getAttribute("user1");
		if(user == null) {
			try {
				response.sendRedirect(request.getContextPath()+"/user/tologin");
				System.out.println("已成功拦截并转发跳转");
				return false;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("合格不需要拦截，放行");
		return true;
	}





	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
		System.out.println("执行了postHandle方法");
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		System.out.println("执行到了afterCompletion方法");
	}
}
