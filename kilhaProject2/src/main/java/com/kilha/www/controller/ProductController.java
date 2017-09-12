package com.kilha.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kilha.www.dao.FactoryRepository;
import com.kilha.www.vo.product.FactoryVO;
import com.kilha.www.vo.product.ProductVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	@Autowired
	FactoryRepository repo;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "fac", method = RequestMethod.GET)
	public String home(Model model) {
		FactoryVO factory = repo.selectFactory1(1);
		List<ProductVO> dailyList = repo.DailyProduct();
		double operating = (dailyList.size()/(double)factory.getMaxamount())*100;
		double result = Math.round(operating*100d)/100d;
		model.addAttribute("factory", factory);
		model.addAttribute("operating", result);
		return "product/test";
	}
	//2���� ������ ������ 2���� ������ ���
	
	@RequestMapping(value="fac1", method = RequestMethod.GET)
	public String fac1(Model model){
		FactoryVO factory = repo.selectFactory1(1);
		model.addAttribute("factory", factory);
		return "product/test";
	}
	
	@RequestMapping(value="fac2", method = RequestMethod.GET)
	public String fac2(Model model){
		FactoryVO factory = repo.selectFactory1(2);
		model.addAttribute("factory", factory);
		return "product/test";
	}
	
	@RequestMapping(value="test1", method = RequestMethod.GET)
	public String test1(){
		return "product/test1";
	}
	
}