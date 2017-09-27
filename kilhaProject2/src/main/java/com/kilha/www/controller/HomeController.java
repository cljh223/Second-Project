package com.kilha.www.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kilha.www.dao.LogisticsRepository;
import com.kilha.www.vo.common.Staff;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	LogisticsRepository repo;
	
	
	@RequestMapping("/")
	public String mainPage(){
		return "main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "logistics/loginPage";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(int staff_code, String staff_password, HttpSession session){
		Staff staff = repo.loginCheck(staff_code, staff_password);
		if (staff != null) {
			session.setAttribute("userid", staff.getStaff_code());
			session.setAttribute("userpw", staff.getStaff_password());
			session.setAttribute("username", staff.getStaff_name());
			return "redirect:/";
		}
		return "redirect:/login";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
