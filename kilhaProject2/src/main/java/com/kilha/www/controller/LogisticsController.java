package com.kilha.www.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kilha.www.dao.LogisticsRepository;
import com.kilha.www.vo.logistics.Shipping;


@Controller
public class LogisticsController {
	
	private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
	
	@Autowired
	LogisticsRepository repo;
	
	@RequestMapping(value="ordering", method=RequestMethod.GET)
	public String orderEntroll(Shipping shipping){
		shipping.setStatus("ordered");
		repo.ordering(shipping);
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping(value="myOrderList", method=RequestMethod.GET)
	public List<Shipping> findOneOrder(HttpSession session){
		int userid = (int) session.getAttribute("userid");
		List<Shipping>list = repo.myOrderList(userid);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="selectOne", method=RequestMethod.GET)
	public Shipping selectOne(String num){
		int orderNum = Integer.parseInt(num);
		Shipping shipping = repo.selectOne(orderNum);
		System.out.println(shipping.toString());
		return shipping;
	}
	
	@ResponseBody
	@RequestMapping(value="resultList", method=RequestMethod.GET)
	public List<Shipping> resultList(String status) {
			List<Shipping> list = repo.resultList(status);
			return list;
	}
	
	@RequestMapping(value="reUpdateList", method=RequestMethod.GET)
	public String resultList(@RequestParam("status") String status, Model model){
		System.out.println("리스트 종류"+status);
		List<Shipping> list = repo.resultList(status);
		model.addAttribute("reUpdateList", list);
		return "redirect:/first";
	}
	
	@RequestMapping(value="updateList", method=RequestMethod.GET)
	public String updateList(int orderNum, String changeStatus, String status, RedirectAttributes redirectAttributes){
		int result = repo.updateList(orderNum, changeStatus);
		redirectAttributes.addAttribute("status", status);
		return "redirect:/reUpdateList";
	}
	
	@RequestMapping(value="deleteList", method=RequestMethod.GET)
	public String deleteList(int orderNum, String status, RedirectAttributes redirectAttributes){
		System.out.println(orderNum);
		System.out.println("들어옴");
		int result = repo.deleteList(orderNum);
		System.out.println("삭제결과"+result);
		if (result == 0) {
			return "null";
		}
		redirectAttributes.addAttribute("status", status);
		return "redirect:/reUpdateList";
	}
	
	@RequestMapping(value = "/first", method = RequestMethod.GET)
	public String first() {
		return "logistics/log-01, 02, 07";
	}
	
	@RequestMapping(value = "/second", method = RequestMethod.GET)
	public String second() {
		return "logistics/log-03, 11";
	}
	
	@RequestMapping(value = "/third", method = RequestMethod.GET)
	public String third() {
		return "logistics/log-04";
	}
	
	@RequestMapping(value = "/fourth", method = RequestMethod.GET)
	public String fourth() {
		return "logistics/log-05, 12";
	}
	
	@RequestMapping(value = "/fifth", method = RequestMethod.GET)
	public String fifth() {
		return "logistics/log-06(List)";
	}
	
	@RequestMapping(value = "/sixth", method = RequestMethod.GET)
	public String sixth() {
		return "logistics/log-06(Timetable)";
	}
	
	@RequestMapping(value = "/seventh", method = RequestMethod.GET)
	public String seventh(String num, Model model) {
		model.addAttribute("num", num);
		return "logistics/log-08, 13";
	}
	
	@RequestMapping(value = "/eighth", method = RequestMethod.GET)
	public String eighth() {
		return "logistics/log-09, 10";
	}
	
	@RequestMapping(value = "/nineth", method = RequestMethod.GET)
	public String nineth() {
		return "logistics/log-13";
	}
}
