package com.kilha.www.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		int userid = (int)session.getAttribute("userid");
		
		if (userid == 0) {
			String ctp = request.getContextPath();
			response.sendRedirect("login");
			return false;
		}
		
		return true;
	}
}
