package com.kilha.www.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
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
import com.kilha.www.dao.MapRep;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Section;
import com.kilha.www.vo.logistics.Shipping;
import com.kilha.www.vo.logistics.Truck;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.SupplyVo;
import com.kilha.www.vo.tmap.Excute;


@Controller
public class LogisticsController {
	
	private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
	public ArrayList<String> shopAddresslist = new ArrayList<>();
	
	@Autowired
	LogisticsRepository repo;
	
	@Autowired
	MapRep repo2;
	
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
	public String fourth(HttpSession session, Model model) {
		int userid = (int)session.getAttribute("userid");
		Staff staff = repo.searchDept(userid);
		model.addAttribute("staff_code", staff.getStaff_code());
		model.addAttribute("staff_department", staff.getStaff_department());
		return "logistics/log-05, 12";
	}
	
	@RequestMapping(value = "/fifth", method = RequestMethod.GET)
	public String fifth(String deliverydate, String quan, Model model) {
		System.out.println("들어옴");
		System.out.println(deliverydate+"/"+quan);
		int quantity = Integer.parseInt(quan);
		model.addAttribute("deliverydate", deliverydate);
		model.addAttribute("quantity", quan);
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
	
	//준석
		@RequestMapping(value = "/junseok", method = RequestMethod.GET)
		public String junseok(Model model) {
			Map processListMap = new HashMap<>();
			processListMap.put("searchProcessText", "");
			List<SupplyVo> supplyList = repo2.processInitialize(processListMap);
			model.addAttribute("supplyList", supplyList);
			System.out.println(supplyList);
			return "logistics/junseok";
		}
		
		//준석
	      @RequestMapping(value = "/junseok2", method = RequestMethod.GET)
	         public String junseok2(Model model, String processCode) {
	            Map processListMap = new HashMap<>();
	            System.out.println(processCode);
	            processListMap.put("processCode", processCode);
	            SupplyVo supplyList = repo2.popupNowEstimate(processListMap);
	            model.addAttribute("supplyList", supplyList);
	            System.out.println(supplyList.toString());
	            
	            SimpleDateFormat original = new SimpleDateFormat("yyyy-MM-dd");
	            SimpleDateFormat new_format = new SimpleDateFormat("yyyy-MM-dd");
	            
	            Date processInsertDate = null;
	            Date processEndDate = null;
	            String new_date = null;
	            String end_date = null;
	            try {
	            processInsertDate = original.parse(supplyList.getProcessInsertDate());
	            new_date = new_format.format(processInsertDate);
	            processEndDate = original.parse(supplyList.getProcessEndDate());
	            end_date = new_format.format(processEndDate);
	         } catch (ParseException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	            model.addAttribute("new_date", new_date);
	            model.addAttribute("end_date", end_date);
	            String searchText = supplyList.getStaffName();
	            int staffCode = repo2.staffSelect(searchText).get(0).getStaff_code();
	            List<Shop>shopList = repo2.shopSelect("");
	            model.addAttribute("processCode", processCode);
	            model.addAttribute("staffCode", staffCode);
	            model.addAttribute("shop_code", shopList.get(0).getShopCode());
	      	            return "logistics/junseok2";
	      }
	
	/*@RequestMapping(value="ordering", method=RequestMethod.GET)
	public String orderEntroll(String dept, int staff_code, String goods, int quantity, int shop_code, String deliverydate, String truck_code){
		Shipping shipping = new Shipping();
		shipping.setDept(dept);
		shipping.setGoods(goods);
		shipping.setQuantity(quantity);
		shipping.setDeliverydate(deliverydate);
		shipping.setStatus("ordered");
		shipping.setStaff_code(staff_code);
		shipping.setShop_code(shop_code);
		shipping.setTruck_code(truck_code);
		repo.ordering(shipping);
		return "redirect:/";
	}*/
	
	@ResponseBody
	@RequestMapping(value="myOrderList", method=RequestMethod.GET)
	public List<Map<String, Object>> findOneOrder(HttpSession session){
		int userid = (int) session.getAttribute("userid");
		List<Map<String, Object>>list = repo.myOrderList(userid);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="selectOne", method=RequestMethod.GET)
	public Map<String, Object> selectOne(String num){
		int orderNum = Integer.parseInt(num);
		Map<String, Object> map = repo.selectOne(orderNum);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="resultList", method=RequestMethod.GET)
	public List<Map<String, Object>> resultList() {
		List<Map<String, Object>> list = repo.resultList();
		return list;
	}
	
	/*@RequestMapping(value="reUpdateList", method=RequestMethod.GET)
	public String resultList(@RequestParam("status") String status, Model model){
		List<Map<String, Object>> list = repo.resultList(status);
		model.addAttribute("reUpdateList", list);
		return "redirect:/first";
	}*/
	
	@RequestMapping(value="updateList", method=RequestMethod.GET)
	public String updateList(int orderNum, String changeStatus, String status, RedirectAttributes redirectAttributes){
		int result = repo.updateList(orderNum, changeStatus);
		redirectAttributes.addAttribute("status", status);
		return "redirect:/reUpdateList";
	}
	
	@RequestMapping(value="deleteList", method=RequestMethod.GET)
	public String deleteList(String process_code){
		System.out.println(process_code);
		int result = repo.deleteList(process_code);
		System.out.println(result);
		if (result == 0) {
			return "redirect:/first";
		}
		return "redirect:/first";
	}
	
	@ResponseBody
	@RequestMapping(value="selectTruck", method=RequestMethod.GET)
	public List<Map<String, Object>> selectTruck(int quantity, int shop_code, String deliverydate){
		List<Map<String, Object>>list = repo.selectTruck(shop_code, deliverydate);
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="getShopList", method = RequestMethod.GET)
	public List<Map<String, Object>> getShopList(){
		List<Map<String, Object>>list = repo.getShopList();
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="getTruckList", method=RequestMethod.GET)
	public List<String> getTruckList(){
		List<String>list = repo.getTruckList();
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="reserveTruckList", method=RequestMethod.GET)
	public List<Map<String, Object>> reserveTruckList(String dDate, String truck){
		System.out.println("날짜 : "+dDate);
		List<Map<String, Object>>list = repo.reserveTruckList(dDate, truck);
		return list;
	}
	
	
	@ResponseBody
	@RequestMapping(value="truckCapacity", method=RequestMethod.GET)
	public boolean truckCapacity(@RequestParam(value="supplyVolume[]")List<Integer>supplyVolume, String truck_code){
		System.out.println("들어옴"+supplyVolume+"/"+truck_code);
		double truckCapa = 0; // 트럭 부피
		double truckBoxQ = 0.0; // 트럭에 담을 수 있는 박스의 최대 수
		double boxCapa1 = 48*38*34; // 한상자의 부피
		/*double originQCapa = 0;*/ // 원래 실리기로 예정된 수량의 부피
		double originQ = 0;// 원래 실리기로 예정된 수
		double supplyQ = 0;//출하요청 제품 수
		double supplyCapa = 0; // 출하요청 제품의 총 부피
		
		for (int i : supplyVolume) {
			supplyQ += i;
		}
		
		List<Truck> list = repo.truckCapa(truck_code);
		for (Truck truck : list) {
			int width = truck.getWidth();
			int length = truck.getLength();
			int height = truck.getHeight();
			truckCapa = width*length*height;
		}
		
		truckBoxQ = Math.round(truckCapa/boxCapa1);
		supplyCapa = supplyQ*boxCapa1;
		List<Integer> originQuantity = repo.originQCapa(truck_code);// 특정 트럭에 실리기로 한 물품의 수
		
		for (Integer integer : originQuantity) {
			originQ += integer;
		}
		
		/*originQCapa = boxCapa1*originQ;*/
		
		if (supplyQ <= (truckBoxQ-originQ)) {
			return true;
		}
	
		return false;
	}
	
	@RequestMapping(value="updateShipping", method=RequestMethod.GET)
	public String updateShipping(String process_code, String truck_code){
		System.out.println("업데이트하러 들어옴");
		Shipping shipping = new Shipping();
		shipping.setTruck_code(truck_code);
		shipping.setProcess_code(process_code);
		System.out.println("컨트롤러 : "+shipping.toString());
		int result = repo.updateShipping(shipping);
		System.out.println("컨트롤러 결과 : "+result);
		if (result == 1) {
			System.out.println("업데이트하고 나감");
			return "redirect:/first";
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="truckListSearch", method=RequestMethod.GET)
	public List<Shipping> truckListSearch(String deliverydate, String truck_code){
		List<Shipping>list = repo.truckListSearch(deliverydate, truck_code);
		System.out.println(list.toString());
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "nameRoute", method = RequestMethod.GET)
	public List<String> nameRoute(String[] shopName) 
	{
		String shopAddress = "";
		shopAddresslist.clear();
		
		for(int i = 0; i < shopName.length; i++)
		{
			List<Shop> list = repo2.shopDetailSelect3(shopName[i]);
			shopAddress += list.get(0).getAddressSet().get(0).getAddressDetail1();
			shopAddress += list.get(0).getAddressSet().get(0).getAddressDetail2();
			shopAddress += list.get(0).getAddressSet().get(0).getAddressDetail3();
			
			if(list.get(0).getAddressSet().get(0).getAddressDetail4() != null
				&& !(list.get(0).getAddressSet().get(0).getAddressDetail4().contains("지하")))
			{
				shopAddress += list.get(0).getAddressSet().get(0).getAddressDetail4();
			}
			
			shopAddresslist.add(shopAddress);
			shopAddress = "";
		}
		
		System.out.println(shopAddresslist.toString());
		
		return shopAddresslist;
	}
	
	@ResponseBody
	@RequestMapping(value = "shortest", method = RequestMethod.GET)
	public String shortest(HttpSession session) 
	{
		Excute excute = new Excute();
		
		String data = "";
		
		if(shopAddresslist.size() > 0)
		{
			data = excute.shortestExcute(shopAddresslist);
		}
		
		JSONObject obj = new JSONObject(data);
		return obj.toString();
	}
	
	@ResponseBody
	@RequestMapping(value="getOriginImg", method=RequestMethod.GET)
	public List<Section> fetchOriginImg(){
		List<Section>list = repo.getOriginImg();
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="warehouseUsage", method=RequestMethod.GET)
	public double warehouseUsage(int warehouse_code){
		double usage = 0; // 창고 사용률(%)
		double temp = 0;
		double quantity = 0; // 창고에서 보관중인 라면의 총 수량
		double quantityCapa = 0; // 창고에서 보관중인 라면의 총 부피
		double whCapa = 0; // 창고의 부피
		int boxCapa1 = 48*38*34; //한상자의 부피 
		int rack1 = 260*50*200; // 선반 하나의 부피
		
		List<Integer> result = repo.warehouseUsage(warehouse_code);
		for (Integer integer : result) {
			quantity += integer;
		}
		
		if (warehouse_code == 1) {
			whCapa = rack1*14; // 선반 14개 가진 창고
		}else if (warehouse_code == 2) {
			whCapa = rack1*12; // 선반 12개 가진 창고
		}else{
			whCapa = rack1*18; // 선반 18개 가진 창고;
		}
		quantityCapa = quantity*boxCapa1;
		temp = quantityCapa/whCapa;
		usage = (quantityCapa/whCapa)*100;
		return usage;
	}
	
	@ResponseBody
	@RequestMapping(value="ramenStock", method=RequestMethod.GET)
	public Map<String, Double> ramenStock(String warehouse_code, String ramen1, String ramen2, String ramen3, String ramen4, String ramen5){
		List<String>list = new ArrayList<>(); //jsp에서 넘겨받은 라면코드를 담을 리스트
		List<Integer>rList = null; // mapper에서 얻어온 라면코드별 수량.
		double totalQ = 0; // 전체 라면 갯수
		double pct = 0; // 종류별 보관율
		double pctR = 0;
		int i = 1;
		Map<String, Double>map = new HashMap<>();
			/*List<Map<String, Object>>result = null;*/		
		list.add(ramen1);
		list.add(ramen2);
		list.add(ramen3);
		list.add(ramen4);
		list.add(ramen5);
		
		List<Integer>aQ = repo.getAllQuantity(warehouse_code);//창고별 총 재고 수
		for (int aTemp : aQ) {
			totalQ += aTemp;
		}
		
		for (String ramen_code : list) { // 라면코드를 하나씩 꺼낸다.
			double rQ = 0; // 종류별 라면 갯수
			rList = repo.ramenStock(warehouse_code, ramen_code); // 하나씩 넣고 검색한다.
			for (int temp :rList) { // 검색한 결과값을 뽑는다.
				rQ += temp;
			}
			pct = rQ/totalQ*100;
			pctR = Math.round(pct);
			map.put("item"+i, pctR);
			i++;
		}
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="sectionInfo", method=RequestMethod.GET)
	public Map<String, Object> sectionInfo(int index){
		int sec_code = index+1;
		double whCapa = 0; // 선반의 부피
		double area = 0; // 선반의 면적
		int rack1 = 260*50*200; // 선반 하나의 부피
		int boxCapa1 = 48*38*34; //한상자의 부피 
		List<Integer>rList = null; // mapper에서 얻어온 라면코드별 수량.
		double rQ = 0; // 종류별 라면 갯수
		double usage = 0; //섹션 이용률
		
		
		Map<String, Object>map = new HashMap<>();
		List<Map<String, Object>>list = repo.sectionInfo(sec_code);
		String sec_name = (String)list.get(0).get("SEC_NAME");
		String warehouse_name = (String)list.get(0).get("WAREHOUSE_NAME");
		String r_name = (String)list.get(0).get("R_NAME");
		
		if (sec_code == 1 || sec_code == 8 || sec_code == 9 || sec_code == 10 || sec_code == 13 ) {
			whCapa = rack1*2; // 선반 2개 가진 창고 구역
			area = 260*50*2/100;
		}else if (sec_code == 2 || sec_code == 3 || sec_code == 4 || sec_code == 5 || sec_code == 6 || sec_code == 7) {
			whCapa = rack1*3; // 선반 3개 가진 창고 구역
			area = 260*50*2/100;
		}else{
			whCapa = rack1*4; // 선반 4개 가진 창고 구역;
			area = 260*50*4/100;
		}
		
		
		rList = repo.sectionStock(sec_code);
		for (int temp :rList) { // 검색한 결과값을 뽑는다.
			rQ += temp;
		}
		usage = Math.round(rQ*boxCapa1/whCapa*100);
		
		map.put("SEC_NAME", sec_name);
		map.put("SEC_CODE", sec_code);
		map.put("WAREHOUSE_NAME", warehouse_name);
		map.put("R_NAME", r_name);
		map.put("TOTALAREA", area); 
		map.put("QUANTITY", rQ);
		map.put("USAGE", usage);
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="safeStock", method=RequestMethod.GET)
	public Map<String, Double> safeStock(int sec_code, int option){
		//안전재고비율 : 수요표준편차 * 서비스계수(2.33) * 루트 공급 리드타임
		double length = 1;
		double safeR = 0.0; // 안전재고비율
		double service = 2.33; // 서비스계수
		double supplyLeadT = Math.sqrt(1); // 공급리드타임
		double totalQ = 0.0; // 출고 요청 수량의 합계
		double meanValue = 0.0;//수요 평균값
		double diff = 0.0;//편차
		double sd = 0.0;//수요표준편차
		double quantity = 0; // 수량의 합계
		double sum = 0.0;//편차의 합계
		double whCapa = 0; // 창고의 부피
		double rack1 = 260*50*200; // 선반 하나의 부피
		double boxCapa1 = 48*38*34; //한상자의 부피 
		double totalBoxQ = 0.0; // 한 섹션 당 보관할 수 있는 상자의 수
		
		List<Integer> list = repo.getSectionP(sec_code);
		for (Integer temp : list) {
			quantity += temp;
			length++;
		}
		meanValue = Math.round(quantity/length);
		System.out.println(meanValue);

		for (Integer temp2 : list) {
			diff = temp2 - meanValue;
			sum += diff * diff;
		}
		System.out.println(sum+" / "+length+" / "+option);
		sd = Math.sqrt(sum/(length-option));
		System.out.println(sd);
		safeR = sd*2.33*supplyLeadT;
		System.out.println("안전재고 비율 : "+safeR);
		
		if (sec_code == 1 || sec_code == 8 || sec_code == 9 || sec_code == 10 || sec_code == 13 ) {
			whCapa = rack1*2; // 선반 2개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}else if (sec_code == 2 || sec_code == 3 || sec_code == 4 || sec_code == 5 || sec_code == 6 || sec_code == 7) {
			whCapa = rack1*3; // 선반 3개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}else{
			whCapa = rack1*4; // 선반 4개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}
		
		double safeQ = Math.round(safeR)*0.01*totalBoxQ;
		
		Map<String, Double> map = new HashMap<>();
		map.put("safe_Rate", (double) Math.round(safeR));// 안전재고 비율
		map.put("safe_Quantity", (double) Math.round(safeQ));// 안전재고 수량
		
		System.out.println(map.toString());
		return map;
	}
	
	@ResponseBody  
	@RequestMapping(value="SSQuantity", method=RequestMethod.GET)
	public Map<String, Double> stockRate(int sec_code){
		int result = 0;//각 섹션별 재고량 
		double whCapa = 0; // 창고의 부피
		int rack1 = 260*50*200; // 선반 하나의 부피
		int boxCapa1 = 48*38*34; //한상자의 부피 
		double totalBoxQ = 0.0; // 한 섹션 당 보관할 수 있는 상자의 수
		Map<String, Double> map = new HashMap<>();
		List<Integer>list = repo.sectionStock(sec_code);
		for (Integer temp : list) {
			result += temp;
		}
		
		if (sec_code == 1 || sec_code == 8 || sec_code == 9 || sec_code == 10 || sec_code == 13 ) {
			whCapa = rack1*2; // 선반 2개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}else if (sec_code == 2 || sec_code == 3 || sec_code == 4 || sec_code == 5 || sec_code == 6 || sec_code == 7) {
			whCapa = rack1*3; // 선반 3개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}else{
			whCapa = rack1*4; // 선반 4개 가진 창고 구역
			totalBoxQ = whCapa/boxCapa1;
		}
		
		double real_rate = result/totalBoxQ*100;
		
		map.put("real_Quantity", (double) result); // 현재 재고 수량
		map.put("real_Rate", (double) Math.round(real_rate)); // 현재 재고 비율
		
		System.out.println(map.toString());
		return map;
	}
}
