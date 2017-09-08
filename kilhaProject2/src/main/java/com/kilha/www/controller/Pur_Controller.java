package com.kilha.www.controller;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kilha.www.dao.Pur_Repository;
import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Pur_Controller {
	
	@Autowired
	Pur_Repository rep;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "Pur", method = RequestMethod.GET)
	public String home() {
		return "purchase/Pur_main";
	}
	
	@RequestMapping(value = "Pur_main", method = RequestMethod.GET)
	public String Pur_main() {
		return "purchase/Pur_main";
	}
	
	
	@RequestMapping(value = "Pur_inform", method = RequestMethod.GET)
	public String Pur_inform() {
		return "purchase/Pur_inform";
	}
	
	@RequestMapping(value = "Pur_chart", method = RequestMethod.GET)
	public String Pur_chart(RedirectAttributes rtts) {
		
		String rmname = "wheat";
		rtts.addAttribute("rmname", rmname);
		
		
		return "redirect:chartdata";
	}

	
	@RequestMapping(value = "chartdata", method = RequestMethod.GET)
	public String Pur_chart(RM_daily_price rm, String dealtype, Model model) {
		
		
		model.addAttribute("dealtype", dealtype);

		System.out.println("pur_chart: " + rm.getRmname());
		List<RM_daily_price> chartInform = rep.rmChart(rm.getRmname());
		

		String chartdata = "[\n";
		int lastdata = chartInform.size()-1;
		int forlistsize = chartInform.size()-1;
	
		for(int i = 0; i<forlistsize;i++){
			chartdata += "['"+chartInform.get(i).getRmdate()+"', "+chartInform.get(i).getRmopen()+", "+chartInform.get(i).getRmhigh()+", "+chartInform.get(i).getRmlow()+", "+chartInform.get(i).getRmclose()+", "+chartInform.get(i).getRmvolume()+"],\n"; 		
		
		}
		
		
		chartdata += "['"+chartInform.get(lastdata).getRmdate()+"', "+chartInform.get(lastdata).getRmopen() +", "+chartInform.get(lastdata).getRmhigh()+", "+chartInform.get(lastdata).getRmlow()+", "+chartInform.get(lastdata).getRmclose()+", "+chartInform.get(lastdata).getRmvolume()+"]";
		chartdata += "\n]";
		System.out.println("데이터출력: "+chartdata);
		
		String latest = "'" + chartInform.get(lastdata).getRmdate() + "'";
		System.out.println(latest);
		
		String todayprice = chartInform.get(lastdata).getRmclose();
		
		model.addAttribute("todayprice", todayprice);
		model.addAttribute("latest", latest);
		model.addAttribute("chartdata",chartdata);
		model.addAttribute("rmname", rm.getRmname());
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
	
	@RequestMapping(value = "Pur_orderform2", method = RequestMethod.GET)
	public String Pur_orderform2() {
		return "purchase/Pur_orderform2";
	}
	
	@RequestMapping(value = "Pur_orderform3", method = RequestMethod.GET)
	public String Pur_orderform3() {
		return "purchase/Pur_orderform3";
	}
	
	
	@RequestMapping(value = "Pur_profitloss", method = RequestMethod.GET)
	public String Pur_profitloss() {
		return "purchase/Pur_profitloss";
	}
	
	@RequestMapping(value = "Pur_store", method = RequestMethod.GET)
	public String Pur_store() {
		return "purchase/Pur_store";
	}
	
	//재료정보 모달창 정보
	@ResponseBody
	@RequestMapping(value = "RMinform", method = RequestMethod.POST)
	public List<RawMaterials> Pur_inform_popup(
			@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		System.out.println("팝업컨트롤러");
		List<RawMaterials> rmlist;
		rmlist = rep.rmList(searchText);
		System.out.println(rmlist);
		return rmlist;
	}
	
	//재료정보 모달창 검색기능
	@ResponseBody
	@RequestMapping(value = "popupRMsearch", method = RequestMethod.GET)
	public List<RawMaterials> popupRM(
			@RequestParam(value = "searchText", defaultValue = "") String searchText) {
		System.out.println("팝업의검색창");
		List<RawMaterials> rmlist;
		rmlist = rep.popupsearch(searchText);
		System.out.println(rmlist);
		return rmlist;
	}
	
	//거래완료시 데이터테이블에 들어가는 메소드
	@RequestMapping(value = "dealconfirm", method = RequestMethod.GET)
	public String dealconfirm(TradeRecords tr) {
		System.out.println(tr.getRmname()+tr.getDealtype()+tr.getDealdate()+tr.getQuantity()+tr.getPrice()+tr.getTotalprice());
		
		//거래내역테이블에 넣는것
		RawMaterials findrm = rep.selectRM(tr.getRmname());
		tr.setRmcode(findrm.getRmcode());
		int trresult = rep.AddTradeRecords(tr);
		
		if(trresult ==1){
			System.out.println("거래내역테이블 입력완료");
		}
		//재고테이블에 넣는것
		
		//새로운 평균가격 계산하기
		int CurrAvgPrice = Integer.parseInt(findrm.getRmavgprice());
		int CurrStock = Integer.parseInt(findrm.getRmstock());
		double NewPrice = Double.parseDouble(tr.getPrice());		
		int NewStock = Integer.parseInt(tr.getQuantity());

		double NewAvgPrice = ((CurrAvgPrice*CurrStock)+(NewPrice*NewStock))/(CurrStock+NewStock);
		
		String rmcode = findrm.getRmcode();
		
		Map rmupdateMap = new HashMap<>();
		
		System.out.println("NewAvgPrice: "+NewAvgPrice);
		rmupdateMap.put("NewAvgPrice", NewAvgPrice);
		rmupdateMap.put("NewStock", NewStock);
		rmupdateMap.put("rmcode", rmcode);
		
		
		int rmresult = rep.AddRawMaterials(rmupdateMap);
		
		if(rmresult == 1){
			System.out.println("재고가격 및 수량 업데이트 완료");
		}
		
		return "purchase/Pur_profitloss";
	}
	
	
}