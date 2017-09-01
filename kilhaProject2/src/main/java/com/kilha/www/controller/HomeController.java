package com.kilha.www.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.dao.MapRep;
import com.kilha.www.util.AddressChange;
import com.kilha.www.vo.Address;
import com.kilha.www.vo.Product;
import com.kilha.www.vo.Shop;
import com.kilha.www.vo.Staff;
import com.kilha.www.vo.Warehouse;

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
		return "sales/selIndex";
	}
	
	@ResponseBody
	@RequestMapping("selectMarker")
	public List<HashMap<String, String>> selectMarker(){
		List<Shop> shopList = rep.markerSelect();
		List<List<Address>> addressList = new ArrayList<>();
		for(int i = 0; i<shopList.size(); i++){
			addressList.add(shopList.get(i).getAddressSet());
		}
		return new AddressChange().search(addressList);
	}
	
	@ResponseBody
	@RequestMapping(value = "popupWarehouse", method = {RequestMethod.POST, RequestMethod.GET})
	public List<Warehouse> popupWarehouse(
			@RequestParam(value = "searchText", defaultValue = "") String searchText
			){
		return rep.warehouseSelect(searchText);
	}
	
	@ResponseBody
	@RequestMapping(value = "popupStaff", method = {RequestMethod.POST, RequestMethod.GET})
	public List<Staff> popupStaff(
			@RequestParam(value = "searchText", defaultValue = "") String searchText){
		return rep.staffSelect(searchText);
	}
	
	@ResponseBody
	@RequestMapping(value = "popupShop", method = {RequestMethod.POST, RequestMethod.GET})
	public List<Shop> popupShop(
			@RequestParam(value = "searchText", defaultValue = "") String searchText){
		return rep.shopSelect(searchText);
	}
	
	@ResponseBody
	@RequestMapping(value = "popupProduct", method = {RequestMethod.POST, RequestMethod.GET})
	public List<Product> popupProduct(
			@RequestParam(value = "searchText", defaultValue = "") String searchText){
		return rep.productSelect(searchText);
	}
	
}
