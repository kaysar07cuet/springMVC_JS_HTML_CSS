package com.ghost.spring.employee.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class FirstHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		System.out.println("FirstHandlerInterceptor preHandler");
		return true;//如果返回false，则后续方法和其他所有在他后面的拦截器都无法执行了。源码中直接跳过。							
	}

	
	/**
	 * 目标方法之后，渲染视图之前调用。
	 */
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("FirstPOSTHANDLER postHandler");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("FirstHandlerInterceptor afterCompletion");
		
	}

}
