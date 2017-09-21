package com.kilha.www.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Shipping;
import com.kilha.www.vo.logistics.Truck;


@Controller
public class LogisticsController {
	
	private static final Logger logger = LoggerFactory.getLogger(LogisticsController.class);
	
	@Autowired
	LogisticsRepository repo;
	
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
	
	@RequestMapping(value="ordering", method=RequestMethod.GET)
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
	}
	
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
	public List<Map<String, Object>> resultList(String status) {
		List<Map<String, Object>> list = repo.resultList(status);
		return list;
	}
	
	@RequestMapping(value="reUpdateList", method=RequestMethod.GET)
	public String resultList(@RequestParam("status") String status, Model model){
		List<Map<String, Object>> list = repo.resultList(status);
		model.addAttribute("reUpdateList", list);
		return "redirect:/first";
	}
	
	@RequestMapping(value="updateList", method=RequestMethod.GET)
	public String updateList(int orderNum, String changeStatus, String status, RedirectAttributes redirectAttributes){
		int result = repo.updateList(orderNum, changeStatus);
		redirectAttributes.addAttribute("status", status);
		return "redirect:/reUpdateList";
	}
	
	@RequestMapping(value="deleteList", method=RequestMethod.GET)
	public String deleteList(int orderNum, String status, RedirectAttributes redirectAttributes){
		System.out.println(orderNum);
		int result = repo.deleteList(orderNum);
		if (result == 0) {
			return "null";
		}
		redirectAttributes.addAttribute("status", status);
		return "redirect:/reUpdateList";
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
	public List<Map<String, Object>> reserveTruckList(String dDate, String office, String truck){
		List<Map<String, Object>>list = repo.reserveTruckList(dDate, office, truck);
		return list;
	}
	
	
	@ResponseBody
	@RequestMapping(value="truckCapacity", method=RequestMethod.GET)
	public boolean truckCapacity(int quantity, String truck_code){
		int truckCapa = 0; // 트럭 부피
		int boxCapa1 = 48*38*34; // 한상자의 부피
		int originQCapa = 0; // 원래 실리기로 예정된 수량의 부피
		int temp = 0;
		
		List<Truck> list = repo.truckCapa(truck_code);
		for (Truck truck : list) {
			int width = truck.getWidth();
			int length = truck.getLength();
			int height = truck.getHeight();
			truckCapa = width*length*height;
		}
		
		List<Integer> originQuantity = repo.originQCapa(truck_code);// 특정 트럭에 실리기로 한 물품의 수
		
		for (Integer integer : originQuantity) {
			temp += integer;
		}
		
		originQCapa = boxCapa1*temp;
		
		if (originQCapa > truckCapa) {
			return false;
		}
	
		return true;
	}
	
	@RequestMapping(value="updateShipping", method=RequestMethod.GET)
	public String updateShipping(int orderNum, String goods, int quantity, int shop_code, String deliverydate, String truck_code){
		System.out.println("업데이트하러 들어옴");
		Shipping shipping = new Shipping();
		shipping.setOrderNum(orderNum);
		shipping.setGoods(goods);
		shipping.setQuantity(quantity);
		shipping.setDeliverydate(deliverydate);
		shipping.setShop_code(shop_code);
		shipping.setTruck_code(truck_code);
		System.out.println("컨트롤러 : "+shipping.toString());
		int result = repo.updateShipping(shipping);
		System.out.println("컨트롤러 결과 : "+result);
		if (result == 1) {
			System.out.println("업데이트하고 나감");
			return "redirect:/nineth";
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
	
	
}
