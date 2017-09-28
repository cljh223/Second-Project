package com.kilha.www.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.vo.tmap.Lonlat;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ShopInfoController {

	@RequestMapping(value = "poi", method = RequestMethod.GET)
	public String poi() 
	{
		return "sales/shopInfo";
	}
	
	@ResponseBody
	@RequestMapping(value = "poiInfo", method = RequestMethod.GET)
	public HashMap<String, List<String>> poiInfo(String searchKeyword) 
	{
		HashMap<String, List<String>> poiInfo = new HashMap<String, List<String>>();
		Lonlat lonlat = new Lonlat();
		poiInfo = lonlat.poilonlat(searchKeyword);
		System.out.println(poiInfo);
		
		return poiInfo;
	}
}