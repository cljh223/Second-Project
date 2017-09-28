package com.kilha.www.controller;

import java.text.DecimalFormat;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.kilha.www.dao.LogisticsRepository;
import com.kilha.www.dao.MapRep;
import com.kilha.www.vo.common.MapData;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.logistics.Warehouse;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.SupplyVo;
import com.kilha.www.vo.tmap.DataSet;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	LogisticsRepository repo;
	
	@Autowired
	MapRep repo2;
	
	@RequestMapping("/")
	public String mainPage(Model model){
		Map map = new HashMap<>();
		map.put("searchProcessText", "");
		map.put("processName", "출고");
		List<SupplyVo> supplyList = repo2.processInitialize(map);
		List<String> sumList = new ArrayList<>();
		DecimalFormat df = new DecimalFormat("#,###");
		for (int i = 0; i < supplyList.size(); i++) {
			long sumTemp = 0;
			for (int j = 0; j < supplyList.get(i).getSupplyList().size(); j++) {
				sumTemp += supplyList.get(i).getSupplyList().get(j).getSupplyPrice()
						* supplyList.get(i).getSupplyList().get(j).getSupplyVolume();
			}
			String sum = df.format(sumTemp);
			sumList.add(sum);
		}
		model.addAttribute("supplyList", supplyList);
		model.addAttribute("sumList", sumList);
		System.out.println(supplyList);
		return "main";
	}
	
	@ResponseBody
	@RequestMapping(value = "shopData", method = RequestMethod.GET)
	public ArrayList<MapData> shopData(){
		DataSet dataset = new DataSet();
		List<Shop> list = repo2.shopDetailSelect2();
		dataset.shopDataSet(list);
		
		ArrayList<MapData> shopData = dataset.shopDataSet(list);
		
		return shopData;
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
	
	@ResponseBody
	@RequestMapping(value = "warehouseDetail", method = RequestMethod.POST)
	public Map warehouseDetail(int warehouseCode) {
		Map warehouseMap = new HashMap<>();
		
		Warehouse warehouse = repo2.warehouseDetail(warehouseCode);
		warehouseMap.put("warehouse", warehouse);
		
		double usage = 0; // 창고 사용률(%)
		double temp = 0;
		double quantity = 0; // 창고에서 보관중인 라면의 총 수량
		double quantityCapa = 0; // 창고에서 보관중인 라면의 총 부피
		double whCapa = 0; // 창고의 부피
		int boxCapa1 = 48 * 38 * 34; // 한상자의 부피
		int rack1 = 260 * 50 * 200; // 선반 하나의 부피
		int warehouse_code = warehouse.getWarehouseCode();
		
		for (Stock stock : warehouse.getStockSet()) {
			quantity += stock.getQuantity();
		}

		if (warehouse_code == 1) {
			whCapa = rack1 * 14; // 선반 14개 가진 창고
		} else if (warehouse_code == 2) {
			whCapa = rack1 * 12; // 선반 12개 가진 창고
		} else {
			whCapa = rack1 * 18; // 선반 18개 가진 창고;
		}
		quantityCapa = quantity * boxCapa1;
		temp = quantityCapa / whCapa;
		usage = (quantityCapa / whCapa) * 100;
		
		warehouseMap.put("usage", usage);
		
		return warehouseMap;
	}
}
