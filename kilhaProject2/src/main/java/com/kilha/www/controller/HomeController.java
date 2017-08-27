package com.kilha.www.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.dao.MapRep;
import com.kilha.www.util.AddressChange;
import com.kilha.www.vo.Address;
import com.kilha.www.vo.Shop;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MapRep rep;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "design/selIndex";
	}
	
	@ResponseBody
	@RequestMapping("selectMarker")
	public List<HashMap<String, String>> selectMarker(){
		List<Shop> shopList = rep.shopSelect();
		List<List<Address>> addressList = new ArrayList<>();
		AddressChange ac = new AddressChange();
		List<HashMap<String, String>> mapList = null;
		for(int i = 0; i<shopList.size(); i++){
			addressList.add(shopList.get(i).getAddressSet());
		}
		mapList = ac.search(addressList);
		return mapList;
	}
	
}
