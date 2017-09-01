package com.kilha.www.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Pur_Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(Pur_Controller.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	@RequestMapping(value = "Pur_main", method = RequestMethod.GET)
	public String Pur_main() {
		return "purchase/Pur_main";
	}
	
	
	@RequestMapping(value = "Pur_inform", method = RequestMethod.GET)
	public String Pur_inform() {
		return "purchase/Pur_inform";
	}
	
	@RequestMapping(value = "Pur_chart", method = RequestMethod.GET)
	public String Pur_chart() {
		return "purchase/Pur_chart";
	}
	
	@RequestMapping(value = "Pur_orders", method = RequestMethod.GET)
	public String Pur_orders() {
		return "purchase/Pur_orders";
	}
	
	@RequestMapping(value = "Pur_orderform1", method = RequestMethod.GET)
	public String Pur_orderform1() {
		return "purchase/Pur_orderform1";
	}
	
	@RequestMapping(value = "Pur_profitloss", method = RequestMethod.GET)
	public String Pur_profitloss() {
		return "purchase/Pur_profitloss";
	}
	
	@RequestMapping(value = "Pur_store", method = RequestMethod.GET)
	public String Pur_store() {
		return "purchase/Pur_store";
	}
	
}
