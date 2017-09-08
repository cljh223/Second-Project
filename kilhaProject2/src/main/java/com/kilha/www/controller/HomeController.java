package com.kilha.www.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.dao.MapRep;
import com.kilha.www.util.AddressChange;
import com.kilha.www.vo.Address;
import com.kilha.www.vo.Process;
import com.kilha.www.vo.Product;
import com.kilha.www.vo.Shop;
import com.kilha.www.vo.Staff;
import com.kilha.www.vo.SupplyVo;
import com.kilha.www.vo.Warehouse;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MapRep rep;
	
	private int count = 1;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "sales", method = RequestMethod.GET)
	public String home(Model model) {
		List<Shop> shopList = rep.markerSelect();
		List<List<Address>> addressList = new ArrayList<>();
		List<Integer>shopCodelist = new ArrayList<>();
		for(int i = 0; i<shopList.size(); i++){
			addressList.add(shopList.get(i).getAddressSet());
			shopCodelist.add(shopList.get(i).getShopCode());
		}
		model.addAttribute("shopCodelist", shopCodelist);
		model.addAttribute("addressList", new AddressChange().search(addressList));
		return "sales/selIndex";
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
	
	@ResponseBody
	@RequestMapping(value = "shopNameSelect", method = RequestMethod.GET)
	public String shopNameSelect(int shopCode){
		return rep.shopNameSelect(shopCode);
	}
	@ResponseBody
	@RequestMapping(value = "processAdd", method = RequestMethod.POST)
	public String processAdd(
			String shopName, String staffName, String warehouseName
			, String processTerm,String processEndDate
			, String shopCode, String processName
			, String[] productCode, int[] supplyVolume
			, int[] supplyPrice
			){
		Map<String, String> processMap = new HashMap<>();
		String message = "";
		processMap.put("staffName", staffName);
		processMap.put("warehouseName", warehouseName);
		processMap.put("processTerm", processTerm);
		processMap.put("processEndDate", processEndDate);
		processMap.put("shopCode", shopCode);
		processMap.put("processName", processName);
		String processCode = "";
		switch (processName) {
			case "寃ъ쟻":
				processCode = "em"+count;
				break;
			case "�닔二�" :
				processCode = "co"+count;
				break;
			case "異쒓퀬" :
				processCode = "re"+count;
			default:
				break;
		}
		count++;
		processMap.put("processCode", processCode);
		Map supplyMap = new HashMap<>();
		boolean result = false;
		if(rep.processAdd(processMap)){
			for(int i = 0; i<productCode.length; i++){
				supplyMap.put("processCode", processCode);
				supplyMap.put("productCode", productCode[i]);
				supplyMap.put("supplyVolume", supplyVolume[i]);
				supplyMap.put("supplyPrice", supplyPrice[i]);
				result = rep.supplyAdd(supplyMap);
			}
			if(result) message = "�벑濡앸릺�뿀�뒿�땲�떎.";
		}else{
			message = "�떎�뙣�뻽�뒿�땲�떎.";
		}
		return message;
	}
	
	@ResponseBody
	@RequestMapping(value = "popupNowEstimate", method = RequestMethod.POST)
	public SupplyVo popupNowEstimate(int shopCode, String processName){
		SupplyVo supplyVo = null;
		Map estimateMap = new HashMap<>();
		estimateMap.put("shopCode", shopCode);
		estimateMap.put("processName", processName);
		supplyVo = rep.popupNowEstimate(estimateMap);
		return supplyVo;
	}
	
	@ResponseBody
	@RequestMapping("popupAllEstimateView")
	public List<SupplyVo> popupAllEstimateView(int shopCode, String processName){
		List<SupplyVo> supplyVoList = null;
		Map estimateMap = new HashMap<>();
		estimateMap.put("shopCode", shopCode);
		estimateMap.put("processName", processName);
		supplyVoList = rep.popupAllEstimateView(estimateMap);
		return supplyVoList;
	}
	
}
