package com.kilha.www.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kilha.www.dao.Pur_Repository;
import com.kilha.www.vo.Purchase.OrderRecords;
import com.kilha.www.vo.Purchase.OrderRecords_Detail;
import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;
import com.kilha.www.vo.common.Staff;

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
	public String Pur_orders(Model model) {
		
		ArrayList<ArrayList<String>> orderrmlists = new ArrayList<ArrayList<String>>();
		
		int ordercount = rep.ordercount();
		
		List<OrderRecords> ORS = rep.orderlist();

				
				//주문값 배열 안에 넣기
		for(int i = 0; i<ORS.size(); i++){
			ArrayList<String> temp = new ArrayList<String>();
			
			//요청코드
			temp.add(ORS.get(i).getTaskcode());
			//신청인
			int tempstaff = ORS.get(i).getStaff_code();
			Staff tstaff = rep.findstaffbynum(tempstaff);
			temp.add(tstaff.getStaff_name());			
			//신청부서
			temp.add(tstaff.getStaff_department());
			//신청일
			temp.add(ORS.get(i).getRequestdate());
			//진행상태
			String status = "대기중";
			
			if(ORS.get(i).getAcceptdate() != null){
				status = "처리중";
			}
			
			if(ORS.get(i).getEnddate() != null){
				status = "처리완료";
			}
			temp.add(status);
			

			orderrmlists.add(temp);

		}
		
		System.out.println(orderrmlists);
		model.addAttribute("orderrmlists",orderrmlists);
		
		
		
		
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
	public String Pur_profitloss(TradeRecords tr, Model model) {
		System.out.println("거래기록페이지가는곳");
		List<TradeRecords> trList;
		trList= rep.trList();	
		System.out.println(trList);
		model.addAttribute("trList",trList);
		
		return "purchase/Pur_profitloss";
	}
	
	//거래기록 띄우기
	
	
	@RequestMapping(value = "Pur_store", method = RequestMethod.GET)
	public String Pur_store() {
		return "purchase/Pur_store";
	}
	
	//재료정보 모달창 정보
	@ResponseBody
	@RequestMapping(value = "RMinform", method = RequestMethod.POST)
	public List<RawMaterials> Pur_inform_popup() {
		System.out.println("팝업컨트롤러");
		List<RawMaterials> rmlist;
		rmlist = rep.rmList();
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
		double CurrAvgPrice = Double.parseDouble(findrm.getRmavgprice());
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
		
		return "redirect:Pur_profitloss";
	}
	
	//주문시 원하는 재료를 클릭했을때 가격정보를 가져오는 ajax
	@ResponseBody
	@RequestMapping(value = "OrderPopupRmPrice", method = RequestMethod.GET)
	public String OrderPopupRmPrice(
			@RequestParam(value = "searchText2", defaultValue = "") String searchText2) {
		
		
		List<RM_daily_price> chartInform;
		chartInform = rep.rmChart(searchText2);
		
		System.out.println("클릭시 가격정보가져오는ajax, rmname"+searchText2);	
		int lastdata = chartInform.size()-1;
		String todayprice = chartInform.get(lastdata).getRmclose();
		
		
		return todayprice;
	}
	//스태프 정보 가져오기
	@ResponseBody
	@RequestMapping(value = "Staffinform", method = RequestMethod.POST)
	public List<Staff> Staffinform( ) {
		System.out.println("스태프팝업컨트롤러");
		List<Staff> stafflist;
		stafflist = rep.StaffList();
		
		return stafflist;
	}
	
	//직원정보 모달창 검색기능
		@ResponseBody
		@RequestMapping(value = "popupStaffsearch", method = RequestMethod.GET)
		public List<Staff> popupStaffsearch(
				@RequestParam(value = "searchText3", defaultValue = "") String searchText3) {
			System.out.println("직원팝업의검색창");
			List<Staff> searchstafflist;
			searchstafflist = rep.staffsearch(searchText3);
			
			return searchstafflist;
		}
	//입력받은 내용을 invoice 서류로 만들기 
		@RequestMapping(value = "orderdata", method = RequestMethod.GET)
		public String orderdata(Model model, HttpSession session,String staffDepartment, String staffName, 
				String orderdate, String staffemail, String stafftel, String staffetc, 
				@RequestParam(value = "sendrmname", defaultValue = "") String[] sendrmname,
				@RequestParam(value = "sendquantity", defaultValue = "") String[] sendquantity,
				@RequestParam(value = "sendprice", defaultValue = "") String[] sendprice
				) {
			
			
			System.out.println(staffDepartment+ staffName+orderdate+ stafftel+ staffetc+sendrmname[0]+sendquantity[0]+sendprice[0]);
			
			//invoice 고유번호 생성
			Random random = new Random();
			int randomNum = random.nextInt();
			String randomString = String.valueOf(randomNum);
			
			String invoiceNum;
			
			invoiceNum = staffDepartment+"-"+randomString+"("+orderdate+")";
			
			
			model.addAttribute("staffDepartment", staffDepartment);
			model.addAttribute("staffName", staffName);
			model.addAttribute("stafftel", stafftel);
			model.addAttribute("staffemail", staffemail);
			model.addAttribute("invoiceNum", invoiceNum);
			model.addAttribute("orderdate", orderdate);
			
			ArrayList<ArrayList<String>> orderrmlist = new ArrayList<ArrayList<String>>();
			
			
			
			
			//주문값 배열 안에 넣기
			for(int i = 0; i<sendrmname.length; i++){
				ArrayList<String> temp = new ArrayList<String>();
				temp.add(sendrmname[i]);
				temp.add(sendprice[i]);
				temp.add(sendquantity[i]);
				
				double dtotal = (Double.parseDouble(sendprice[i])*Double.parseDouble(sendquantity[i]));
			    long itotal = (long)dtotal;
				String stotal = String.valueOf(itotal);
				temp.add(stotal);
				System.out.println(stotal);
				orderrmlist.add(temp);

			}
			
			System.out.println("주문을 리스트에 담기: "+orderrmlist);
			System.out.println(orderrmlist);
			model.addAttribute("orderrmlist", orderrmlist);
			model.addAttribute("staffetc",staffetc);
			
			session.setAttribute("orderrmlist", orderrmlist);
			
			//총액계산
			int subtotal = 0;
			for(int i = 0; i<orderrmlist.size();i++){
				subtotal += Integer.parseInt(orderrmlist.get(i).get(3));
				System.out.println("총액: "+subtotal);
			}
			model.addAttribute("subtotal",subtotal);	

			return "purchase/Pur_invoiceprint";
		}
		
		//@RequestParam(value = "orderrmlist", defaultValue = "") ArrayList<ArrayList<String>> orderrmlist
		@RequestMapping(value = "insertorder", method = RequestMethod.GET)
		public String insertorder(Model model, HttpSession session, String taskcode,String requestdate, String etc,
				String staffname,  String subtotal, OrderRecords OR,RedirectAttributes rtts
				) {
			
			ArrayList<ArrayList<String>> orderrmlist = (ArrayList<ArrayList<String>>) session.getAttribute("orderrmlist");
			
			Staff result = rep.fineonestaff(staffname);
			
			
			
			OR.setTaskcode(taskcode);
			OR.setRequestdate(requestdate);
			OR.setEtc(etc);
			OR.setStaff_code(result.getStaff_code());
			
			//기본주문정보 입력
			int insertresult = rep.insertorder(OR);
			if(insertresult != 0){
				System.out.println("기본주문정보 입력완료");
			}
			
			for(int i = 0; i<orderrmlist.size(); i++){
					OrderRecords_Detail ORD = new OrderRecords_Detail();
					ORD.setTaskcode(taskcode);
					ORD.setRmname(orderrmlist.get(i).get(0));
					int qtemp = Integer.parseInt(orderrmlist.get(i).get(2));
					ORD.setQuantity(qtemp);
					double ptemp = Double.parseDouble(orderrmlist.get(i).get(1));
					ORD.setPrice(ptemp);
					ORD.setTotal(qtemp*ptemp);
					
					int insertdetailresult = rep.insertorderdetail(ORD);
					if(insertdetailresult != 0){
						System.out.println("디테일주문정보 입력완료");
					}
				
			}
					return "redirect:Pur_orders";
		}
		
		
		@RequestMapping(value = "invoicedetails", method = RequestMethod.GET)
		public String invoicedetails(String taskcode, Model model) {
			System.out.println("주문정보 디테일: "+taskcode);
			
			OrderRecords tempOR = rep.getbasicrecord(taskcode);
			Staff tempstaff = rep.findstaffbynum(tempOR.getStaff_code());
			List<OrderRecords_Detail> tempORD = rep.getdetailrecord(taskcode);
			//
			/*for(int i=0; i<tempORD.size(); i++){
				long 
				
			}*/
			model.addAttribute("tempOR",tempOR);
			model.addAttribute("tempstaff",tempstaff);
			model.addAttribute("tempORD",tempORD);
			
			double totalprice =0;
			for(int i =0; i<tempORD.size(); i++){
				totalprice += tempORD.get(i).getTotal();
			}
			System.out.println(totalprice);
			int totalprice2 = Integer.parseInt(String.valueOf(Math.round(totalprice)));

			model.addAttribute("totalprice2",totalprice2);
			
			return "purchase/Pur_invoicedetails";
		}
		
		
		
}