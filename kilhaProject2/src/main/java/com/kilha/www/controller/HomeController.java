package com.kilha.www.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.dao.LogisticsRepository;
import com.kilha.www.dao.MapRep;
import com.kilha.www.util.AddressChange;
import com.kilha.www.vo.common.Product;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.sal.Address;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.SupplyVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	LogisticsRepository repo;
	
	
	@RequestMapping("/")
	public String mainPage(){
		return "index";
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
