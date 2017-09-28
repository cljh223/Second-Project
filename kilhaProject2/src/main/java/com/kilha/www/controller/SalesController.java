package com.kilha.www.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

import com.kilha.www.dao.LogisticsRepository;
import com.kilha.www.dao.MapRep;
import com.kilha.www.util.AddressChange;
import com.kilha.www.vo.common.Product;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.sal.Address;
import com.kilha.www.vo.sal.Kpi;
import com.kilha.www.vo.sal.Kpidivision;
import com.kilha.www.vo.sal.Process;
import com.kilha.www.vo.sal.ProcessTableVo;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.Supply;
import com.kilha.www.vo.sal.SupplyListVo;
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

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "salesMain", method = RequestMethod.GET)
	public String salesMain(Model model) {
		List<Shop> shopList = rep.markerSelect();
		List<List<Address>> addressList = new ArrayList<>();
		List<Integer> shopCodeList = new ArrayList<>();
		List<String> shopStateList = new ArrayList<>();
		for (int i = 0; i < shopList.size(); i++) {
			addressList.add(shopList.get(i).getAddressSet());
			shopCodeList.add(shopList.get(i).getShopCode());
			shopStateList.add(shopList.get(i).getShopState());
		}
		System.out.println(shopCodeList);
		model.addAttribute("shopCodeList", shopCodeList);
		model.addAttribute("addressList", new AddressChange().search(addressList));
		model.addAttribute("shopStateList", shopStateList);
		
		rep.updateState();
		
		return "sales/selIndex";
	}

	@ResponseBody
	@RequestMapping(value = "popupWarehouse", method = { RequestMethod.POST, RequestMethod.GET })
	public List<Stock> popupWarehouse(@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		return rep.warehouseSelect(searchText);
	}

	@ResponseBody
	@RequestMapping(value = "popupStaff", method = { RequestMethod.POST, RequestMethod.GET })
	public List<Staff> popupStaff(@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		List<Staff> list = rep.staffSelect(searchText);
		return list;
	}

	@ResponseBody
	@RequestMapping(value = "popupShop", method = { RequestMethod.POST, RequestMethod.GET })
	public List<Shop> popupShop(@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		return rep.shopSelect(searchText);
	}

	@ResponseBody
	@RequestMapping(value = "popupProduct", method = { RequestMethod.POST, RequestMethod.GET })
	public List<Product> popupProduct(@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		return rep.productSelect(searchText);
	}

	@ResponseBody
	@RequestMapping(value = "shopNameSelect", method = RequestMethod.GET)
	public String shopNameSelect(int shopCode) {
		return rep.shopNameSelect(shopCode);
	}

	@ResponseBody
	@RequestMapping(value = "processAdd", method = RequestMethod.POST)
	public String processAdd(String shopName, String staffName, String warehouseName, String processTerm,
			String processEndDate, String shopCode, String processName, String[] productCode, int[] supplyVolume,
			int[] supplyPrice) {
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
			processCode = "em";
			break;
		case "수주":
			processCode = "co";
			break;
		case "출고":
			processCode = "re";
		default:
			break;
		}
		processMap.put("processCode", processCode);
		Map supplyMap = new HashMap<>();
		boolean result = false;
		if (rep.processAdd(processMap)) {
			String processCodeLast = rep.processCodeSelect(processCode).getProcessCode();
			for (int i = 0; i < productCode.length; i++) {
				supplyMap.put("processCodeLast", processCodeLast);
				supplyMap.put("productCode", productCode[i]);
				supplyMap.put("supplyVolume", supplyVolume[i]);
				supplyMap.put("supplyPrice", supplyPrice[i]);
				result = rep.supplyAdd(supplyMap);
			}
			if (result)
				message = "등록되었습니다.";
		} else {
			message = "에러입니다.";
		}
		return message;
	}

	@ResponseBody
	@RequestMapping(value = "popupNowEstimate", method = {RequestMethod.GET, RequestMethod.POST})
	public SupplyVo popupNowEstimate(String processCode) {
		SupplyVo supplyVo = null;
		Map estimateMap = new HashMap<>();
		estimateMap.put("processCode", processCode);
		supplyVo = rep.popupNowEstimate(estimateMap);
		return supplyVo;
	}

	@ResponseBody
	@RequestMapping("popupAllEstimateView")
	public List<SupplyVo> popupAllEstimateView(int shopCode, String processName) {
		List<SupplyVo> supplyVoList = null;
		Map estimateMap = new HashMap<>();
		estimateMap.put("shopCode", shopCode);
		estimateMap.put("processName", processName);
		supplyVoList = rep.popupAllEstimateView(estimateMap);
		return supplyVoList;
	}

	@RequestMapping("processMain")
	public String processMain() {
		return "sales/processMain";
	}

	@ResponseBody
	@RequestMapping("processInitialize")
	public List<SupplyVo> processInitialize(@RequestParam(value = "processName", defaultValue = "") String processName,
			@RequestParam(value = "shopName", defaultValue = "") String shopName,
			@RequestParam(value = "searchProcessText", defaultValue = "") String searchProcessText) {
		Map processListMap = new HashMap<>();
		processListMap.put("processName", processName);
		processListMap.put("searchProcessText", searchProcessText);
		List<SupplyVo> list = rep.processInitialize(processListMap);
		return list;
	}

	@ResponseBody
	@RequestMapping("shopDetailSelect")
	public List<SupplyVo> shopDetailSelect(@RequestParam(value = "shopCode", defaultValue = "0") int shopCode,
			Model model) {
		String endDate = "";
		long shopTerm = 0;
		String lateProcess = "아직 없습니다.";
		long sumPrice = 0;
		long sumSales = 0;
		long sumUnitPrice = 0;
		String gubun = "yes";
		int process = rep.processSelect(shopCode);
		if (process == 0) {
			gubun = "no";
		}
		Map map = new HashMap<>();
		map.put("shopCode", shopCode);
		map.put("gubun", gubun);
		List<SupplyVo> supplyList = rep.shopDetailSelect(map);
		System.out.println(supplyList);
		List list = new ArrayList<>();
		if (gubun.equals("yes")) {
			endDate = supplyList.get(supplyList.size() - 1).getProcessEndDate();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date insertDate = formatter.parse(supplyList.get(0).getProcessInsertDate());
				Date lateTerm = formatter.parse(endDate);
				long diff = lateTerm.getTime() - insertDate.getTime();
				shopTerm = diff / (24 * 60 * 60 * 1000);

				String lateText = supplyList.get(supplyList.size() - 1).getProcessCode().substring(0, 2);
				if (lateText.equals("em"))
					lateProcess = "견적";
				else if (lateText.equals("co"))
					lateProcess = "수주";
				else if (lateText.equals("re"))
					lateProcess = "출고";

				for (SupplyVo vo : supplyList) {
					long sumTemp = 0;
					long sumSalesTemp = 0;
					long sumUnitPriceTemp = 0;
					for (SupplyListVo listVo : vo.getSupplyList()) {
						sumTemp += listVo.getSupplyPrice() * listVo.getSupplyVolume();
						sumSalesTemp += listVo.getSupplyVolume();
						sumUnitPriceTemp += listVo.getProductUnitPrice();
					}
					sumPrice += sumTemp;
					sumSales += sumSalesTemp;
					sumUnitPrice += sumUnitPriceTemp;
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		list.add(supplyList);
		list.add(shopTerm);
		list.add(endDate);
		list.add(lateProcess);
		list.add(sumSales);
		list.add(sumPrice);
		list.add(sumUnitPrice);
		return list;
	}

	@ResponseBody
	@RequestMapping("contactsViewFunction")
	public SupplyVo contactsViewFunction(int shopCode) {
		return rep.contactsViewFunction(shopCode);
	}

	@ResponseBody
	@RequestMapping("processViewFunction")
	public List<SupplyVo> processViewFunction(
			@RequestParam(value = "processName", defaultValue = "") String processName, String shopCode,
			@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		Map processListMap = new HashMap<>();
		processListMap.put("processName", processName);
		processListMap.put("shopCode", shopCode);
		processListMap.put("searchText", searchText);
		return rep.processViewFunction(processListMap);
	}

	@ResponseBody
	@RequestMapping(value = "chartSelect", method = RequestMethod.POST)
	public Map<String, List> chartSelect(@RequestParam(value = "date", defaultValue = "2017-01") String date,
			@RequestParam(value = "shopCode", defaultValue = "1") int shopCode) {
		Map codeMap = new HashMap<>();
		codeMap.put("date", date);
		codeMap.put("shopCode", shopCode);
		List<Process> processList = rep.chartSelect(codeMap);
		Map<String, List> map = new HashMap<>();
		ArrayList<Long> salesList = new ArrayList<>();
		ArrayList<Long> earnList = new ArrayList<>();
		ArrayList<Long> allEarnSumList = new ArrayList<>();
		ArrayList<String> dateList = new ArrayList<>();
		for (int j = 0; j < processList.size(); j++) {
			String end_date = processList.get(j).getProcessEndDate();
			dateList.add(end_date);
			for (int i = 0; i < processList.get(j).getSupplySet().size(); i++) {
				long salesSum = processList.get(j).getSupplySet().get(i).getSupplyVolume();
				long earnSum = processList.get(j).getSupplySet().get(i).getSupplyPrice();
				long allEarnSum = processList.get(j).getSupplySet().get(i).getSupplyNum();
				earnList.add(earnSum);
				salesList.add(salesSum);
				allEarnSumList.add(allEarnSum);
			}

		}
		map.put("dateList", dateList);
		map.put("earnList", earnList);
		map.put("allEarnSumList", allEarnSumList);
		map.put("salesList", salesList);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "chartSelect2", method = RequestMethod.POST)
	public Map<String, List> chartSelect2(@RequestParam(value = "processName", defaultValue = "") String processName) {
		Map codeMap = new HashMap<>();
		codeMap.put("processName", processName);
		List<Process> processList = rep.chartSelect2(codeMap);
		Map<String, List> map = new HashMap<>();
		ArrayList<Long> salesList = new ArrayList<>();
		ArrayList<Long> earnList = new ArrayList<>();
		ArrayList<Long> allEarnSumList = new ArrayList<>();
		ArrayList<String> dateList = new ArrayList<>();
		for (int j = 0; j < processList.size(); j++) {
			String end_date = processList.get(j).getProcessEndDate();
			dateList.add(end_date);
			for (int i = 0; i < processList.get(j).getSupplySet().size(); i++) {
				long salesSum = processList.get(j).getSupplySet().get(i).getSupplyVolume();
				long earnSum = processList.get(j).getSupplySet().get(i).getSupplyPrice();
				long allEarnSum = processList.get(j).getSupplySet().get(i).getSupplyNum();
				earnList.add(earnSum);
				salesList.add(salesSum);
				allEarnSumList.add(allEarnSum);
			}

		}
		map.put("dateList", dateList);
		map.put("earnList", earnList);
		map.put("allEarnSumList", allEarnSumList);
		map.put("salesList", salesList);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "overviewIntiFunction", method = RequestMethod.POST)
	public Map<String, List<String>> overviewIntiFunction(int shopCode) {
		Map<String, List<String>> map = new HashMap<>();
		List<String> list = rep.overviewIntiFunction(shopCode);
		ArrayList<String> yearList = new ArrayList<>();
		String yearTemp = null;
		for (String s : list) {
			String tempArray[] = s.split("-");
			yearTemp = tempArray[0] + "-" + tempArray[1];
			boolean stResult = true;
			for (String st : yearList) {
				if (yearTemp.equals(st)) {
					stResult = false;
					break;
				}
			}
			if (stResult) {
				yearList.add(yearTemp);
			}
		}
		map.put("yearList", yearList);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "kpiSelect", method = RequestMethod.POST)
	public Map<String, Kpidivision> kpiSelect(@RequestParam(value = "date", defaultValue = "2017-10") String date,
			@RequestParam(value = "shopCode", defaultValue = "1") int shopCode) {
		Map codeMap = new HashMap<>();
		codeMap.put("date", date);
		codeMap.put("shopCode", shopCode);
		List<Kpidivision> kpiList = rep.kpiSelect(codeMap);
		Map resultList = new HashMap<>();
		for (Kpidivision k : kpiList) {
			if (k.getKpidivisionCode() == 0)
				resultList.put("salse", k);
			else if (k.getKpidivisionCode() == 1)
				resultList.put("earn", k);
			else if (k.getKpidivisionCode() == 2)
				resultList.put("allEarn", k);
		}
		Map<String, List> list = chartSelect(date, shopCode);
		List<Long> salesList = list.get("salesList");
		List<Long> earnList = list.get("earnList");
		List<Long> allEarnSumList = list.get("allEarnSumList");
		long sumSales = 0;
		long sumEarn = 0;
		long sumAllEarn = 0;
		for (Long i : salesList) {
			sumSales += i;
		}
		for (Long t : earnList) {
			sumEarn += t;
		}
		for (Long j : allEarnSumList) {
			sumAllEarn += j;
		}
		resultList.put("sumSales", sumSales);
		resultList.put("sumEarn", sumEarn);
		resultList.put("sumAllEarn", sumAllEarn);
		return resultList;
	}

	@RequestMapping(value = "jusoPopuo", method = RequestMethod.GET)
	public String jusoPopuo() {

		return "sales/jusoPopup";
	}

	@ResponseBody
	@RequestMapping(value = "updateViewFunction", method = RequestMethod.POST)
	public Shop updateViewFunction(int shopCode) {
		return rep.updateViewFunction(shopCode);
	}

	@ResponseBody
	@RequestMapping(value = "kpiSettingFunction", method = RequestMethod.POST)
	public int kpiSettingFunction(int shopCode, @RequestParam(value = "kpiJson", required = true) List<Integer> kpiJson,
			String selector) {
		Map map = new HashMap<>();
		map.put("shopCode", shopCode);
		selector += "-01";
		map.put("selector", selector);
		int count = 0;
		for (int i = 0; i < 3; i++) {
			map.put("kpiJson", kpiJson.get(i));
			map.put("index", i);
			count += rep.kpiSettingFunction(map);
		}
		return count;
	}

	@ResponseBody
	@RequestMapping(value = "processTable", method = { RequestMethod.POST, RequestMethod.GET })
	public ProcessTableVo processTable(String processCode) {
		return rep.processTable(processCode);
	}

	@RequestMapping("compareMain")
	public String compareMain(Model model) {
		List<Shop> shopList = rep.markerSelect();
		List<List<Address>> addressList = new ArrayList<>();
		List<Integer> shopCodeList = new ArrayList<>();
		List<String> shopStateList = new ArrayList<>();
		for (int i = 0; i < shopList.size(); i++) {
			addressList.add(shopList.get(i).getAddressSet());
			shopCodeList.add(shopList.get(i).getShopCode());
			shopStateList.add(shopList.get(i).getShopState());
		}
		model.addAttribute("shopCodeList", shopCodeList);
		model.addAttribute("addressList", new AddressChange().search(addressList));
		model.addAttribute("shopStateList", shopStateList);
		return "sales/Compare";
	}

	@RequestMapping("productMain")
	public String productMain() {
		return "sales/productCompare";
	}

	@ResponseBody
	@RequestMapping(value = "shopDetailSelect2", method = RequestMethod.POST)
	public List<Shop> shopDetailSelect2() {
		return rep.shopDetailSelect2();
	}

	@ResponseBody
	@RequestMapping(value = "compareChartDateFunction", method = RequestMethod.POST)
	public String compareChartDateFunction(int shopCode) {
		List<SupplyVo> list = rep.compareChartDateFunction(shopCode);
		String result = null;
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "kpiAdd", method = RequestMethod.POST)
	public int kpiAdd(int shopCode, String date, int gubun, int unEarnUpdate) {
		Map map = new HashMap<>();
		map.put("shopCode", shopCode);
		map.put("kpiStartDate", date);
		map.put("gubun", gubun);
		map.put("unEarnUpdate", unEarnUpdate);
		return rep.kpiAdd(map);
	}
	
	@ResponseBody
	@RequestMapping(value = "insertNewShop", method = RequestMethod.POST)
	public int insertNewShop(String shopName, String shopNumber, String shopRep,
			String shopTel, String shopEmail, String shopSNS, String shopDivision, String address) {
		Map map = new HashMap<>();
		map.put("shopName", shopName);
		map.put("shopNumber", shopNumber);
		map.put("shopRep", shopRep);
		map.put("shopTel", shopTel);
		map.put("shopEmail", shopEmail);
		map.put("shopSNS", shopSNS);
		map.put("shopDivision", shopDivision);
		rep.insertNewShop(map);
		
		String [] list = address.split(" ");
		map.put("addressDetail1", list[0]);
		map.put("addressDetail2", list[1]);
		map.put("addressDetail3", list[2]);
		if(list.length == 4){
			map.put("addressDetail4", list[3]);
		}
		map.put("addressDetail4", "");
		return rep.insertNewAddress(map);
	}
	
	@ResponseBody
	@RequestMapping(value = "supplyTableSetting", method = RequestMethod.POST)
	public List<Supply> supplyTableSetting(String processCode){
		return rep.supplyTableSetting(processCode);
	}

}
