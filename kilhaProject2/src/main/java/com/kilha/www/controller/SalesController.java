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
public class SalesController {
	
	@Autowired
	MapRep rep;
	
	@Autowired
	LogisticsRepository repo;
	
	private int count = 1;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "salesMain", method = RequestMethod.GET)
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
	public List<Stock> popupWarehouse(
			@RequestParam(value = "searchText", defaultValue = "") String searchText
			){
		return rep.warehouseSelect(searchText);
	}
	
	@ResponseBody
	@RequestMapping(value = "popupStaff", method = {RequestMethod.POST, RequestMethod.GET})
	public List<Staff> popupStaff(
			@RequestParam(value = "searchText", defaultValue = "") String searchText){
		List<Staff> list = rep.staffSelect(searchText);
		System.out.println(list);
		return list;
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
			case "견적":
				processCode = "em"+count;
				break;
			case "수주" :
				processCode = "co"+count;
				break;
			case "출고" :
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
			if(result) message = "등록되었습니다.";
		}else{
			message = "에러입니다.";
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
	
	@RequestMapping("processMain")
	public String processMain(){
		return "sales/processMain";
	}
	
	@ResponseBody
	@RequestMapping("processInitialize")
	public List<SupplyVo> processInitialize(
			@RequestParam(value = "processName", defaultValue = "") String processName, 
			@RequestParam(value = "shopName", defaultValue = "") String shopName){
		Map processListMap = new HashMap<>();
		return rep.processInitialize(processListMap);
	}
	
}
