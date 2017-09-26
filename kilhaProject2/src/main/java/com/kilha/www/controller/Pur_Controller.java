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
	public String Pur_inform(Model model) {
		
		List<RawMaterials> rmlist =  rep.rmList();
		ArrayList<ArrayList<String>> ordertorm = new ArrayList<ArrayList<String>>();
		
		
		for(int i = 0; i<rmlist.size(); i++){
			ArrayList<String> temp = new ArrayList<String>();
			//품목
			String temprm = rmlist.get(i).getRmname();
			temp.add(temprm);
			
			//퍼센트
			//이름으로 해당 재고 리스트 가져오기
			List<OrderRecords_Detail> tempord = rep.sumorderrm(temprm);
			
			//재료별 요구주문량 더하기
			int sum=0;
			//해당재고 리스트에 있는 주문량들을 더하기 위해 포문
			for(int k = 0; k<tempord.size(); k++){
				//첫번째 재고의 업무번호
				String temptc = tempord.get(k).getTaskcode();
				//업무번호에 해당하는 기본주문정보
				OrderRecords ttor = rep.getbasicrecord(temptc);			
				//기본주문정보 안에 있는 업무종료일 값이 없으면 들어간다. 
				if(ttor.getEnddate()==null){	
					
					/*Map filtermap = new HashMap<>();		
					System.out.println("주문번호:"+temptc);
					System.out.println("주문품목:"+temprm);
					filtermap.put("temptc", temptc);
					filtermap.put("temprm", temprm);
					int tempamount = rep.getordamount(filtermap);*/
					
					//첫번째 주문번호 재료의 양을 더한다
					int tempamount = tempord.get(k).getQuantity();
					sum = sum + tempamount;
					//sum에는 해당 재료이름의 전체 주문량이 들어가 있다.
				}
				
				if(ttor.getEnddate() != null){
					continue;
				}
			}
					
			
			//해당 재고수량
			int intrmstock = Integer.parseInt(rmlist.get(i).getRmstock());
			
			//만약 재고수량이 필요주문량보다 많으면
			if(intrmstock>sum&&sum>0){
				int percent = (sum*100/intrmstock);
				String Spercent = String.valueOf(percent);
				temp.add(Spercent);
			}	
			//만약 재고수량이 필요주문량보다 적으면
			if(intrmstock<sum){
				String warning = "100";
				temp.add(warning);
			}
			if(sum == 0){
				String none = "0";
				temp.add(none);
			}
			ordertorm.add(temp);	
		

		}
		System.out.println(ordertorm);
		model.addAttribute("ordertorm",ordertorm);
		
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
		
		String latest = "'" + chartInform.get(lastdata).getRmdate() + "'";
		
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
			//업무시작일
			temp.add(ORS.get(i).getAcceptdate());
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
	public String Pur_store(Model model) {
		List<RawMaterials> listrm = rep.listRawMaterials();
		System.out.println("Pur_store 들어오나1");
		
		ArrayList<ArrayList<String>> rmstoreinform = new ArrayList<ArrayList<String>>();
		System.out.println("Pur_store 들어오나2");
		
		for(int i = 0; i<listrm.size(); i++){
			System.out.println("Pur_store 들어오나3");
			ArrayList<String> temp = new ArrayList<String>();
			
			//상품명
			temp.add(listrm.get(i).getRmname());
			//상품코드
			temp.add(listrm.get(i).getRmcode());			
			//잔여수량
			temp.add(listrm.get(i).getRmstock());
			
			int quantity = Integer.parseInt(listrm.get(i).getRmstock());
			//평균단가
			temp.add(listrm.get(i).getRmavgprice());
			//현재가격
			
			List<RM_daily_price> rmprice = rep.rmChart(listrm.get(i).getRmname());
			String todayprice = rmprice.get(rmprice.size()-1).getRmclose();
			temp.add(todayprice);
			//수익금
			
			double Dtodayprice = Double.parseDouble(todayprice);
			double Davgprice = Double.parseDouble(listrm.get(i).getRmavgprice());
			
			if(Davgprice != 0){
				double profits = quantity*(Dtodayprice-Davgprice); 
				int Iprofits = Integer.parseInt(String.valueOf(Math.round(profits)));
				
				String Sprofits = Integer.toString(Iprofits);
				temp.add(Sprofits);
				
				//수익률	
				double prorate = (Dtodayprice*100/Davgprice);
				prorate = prorate - 100;
				System.out.println("prorate: "+prorate);
				int Iprorate = Integer.parseInt(String.valueOf(Math.round(prorate)));
				
				String Sprorate = Integer.toString(Iprorate);
				temp.add(Sprorate);
			}
			
			//가격정보없을때
			if(Davgprice == 0){
				String Sprofits = "가격정보없음";
				temp.add(Sprofits);
				String Sprorate = "가격정보없음";
				temp.add(Sprorate);
			}
			
			
			
			
			
			//잔여가치
			Double values= Dtodayprice*quantity;
			
			int Ivalues = Integer.parseInt(String.valueOf(Math.round(values)));

			
			String Svalues = Integer.toString(Ivalues);
			temp.add(Svalues);
			
			rmstoreinform.add(temp);
			System.out.println("Pur_store 들어오나4");
		}
		System.out.println("재고정보: "+rmstoreinform);
		model.addAttribute("rmstoreinform",rmstoreinform);
		
		
		
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
		
			
		if(tr.getDealtype().equals("BUY")){
		//거래내역테이블에 넣는것
		RawMaterials findrm = rep.selectRM(tr.getRmname());
		tr.setRmcode(findrm.getRmcode());
		System.out.println("들어오나");
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
			System.out.println("재고가격 및 수량 추가 완료");
		}
		
		}
		
		if(tr.getDealtype().equals("SELL")){
			
			RawMaterials findrm = rep.selectRM(tr.getRmname());
			tr.setRmcode(findrm.getRmcode());
			
			//이익액수 구하기
			double Dcprice = Double.parseDouble(tr.getPrice());
			//double Dtotal = Double.parseDouble(tr.getTotalprice());
			double Dquantity = Double.parseDouble(tr.getQuantity());
			double Davgprice = Double.parseDouble(findrm.getRmavgprice());
			double Dprofit = Dquantity*(Dcprice-Davgprice);
			int Iprofit = Integer.parseInt(String.valueOf(Math.round(Dprofit)));
			
			String Sprofit = Integer.toString(Iprofit);
			System.out.println("수익금:"+ Sprofit);
			tr.setProfits(Sprofit);
			
			//이익률 구하기
			
			double Dprorate = (Dcprice*100)/Davgprice;
			Dprorate = Dprorate-100;
			
			int Iprorate = Integer.parseInt(String.valueOf(Math.round(Dprorate)));
			String Sprorate = Integer.toString(Iprorate);
			System.out.println("이익률:"+ Sprorate);
			tr.setProfitrates(Sprorate);
		
			int trresult = rep.SubTradeRecords(tr);
			if(trresult == 1){
				System.out.println("이익률업데이트 완료");
			}
			//재고테이블 감소
			
			String rmcode = findrm.getRmcode();
			int NewStock = Integer.parseInt(tr.getQuantity());
			Map rmupdateMap = new HashMap<>();
			
			rmupdateMap.put("NewStock", NewStock);
			rmupdateMap.put("rmcode", rmcode);
			
			int rmresult = rep.SubRawMaterials(rmupdateMap);
			
			if(rmresult == 1){
				System.out.println("수량 감소 완료");
			}
			
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
					double tempst = qtemp*ptemp;
					int settotal = Integer.parseInt(String.valueOf(Math.round(tempst)));
					ORD.setTotal(settotal);
					
					int insertdetailresult = rep.insertorderdetail(ORD);
					if(insertdetailresult != 0){
						System.out.println("디테일주문정보 입력완료");
					}
				
			}
					return "redirect:Pur_orders";
		}
		
		//주문정보 상세보기
		@RequestMapping(value = "invoicedetails", method = RequestMethod.GET)
		public String invoicedetails(String taskcode, Model model) {
			
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
			int totalprice2 = Integer.parseInt(String.valueOf(Math.round(totalprice)));

			model.addAttribute("totalprice2",totalprice2);
			
			return "purchase/Pur_invoicedetails";
		}
		
		@RequestMapping(value = "Pur_workstart", method = RequestMethod.GET)
		public String Pur_workstart(Model model, String taskcode, String workstartday,
				RedirectAttributes rtts) {
			
			
			Map updatestart = new HashMap<>();
			
			
			updatestart.put("taskcode", taskcode);
			updatestart.put("workstartday", workstartday);
			
			int temp = rep.workstart(updatestart);

			if(temp == 1){
				System.out.println("업무개시날짜등록완료");
			}
			
			//rtts.addAttribute("taskcode",taskcode);
			return "redirect:Pur_orders";
		}
		
		@RequestMapping(value = "Pur_workend", method = RequestMethod.GET)
		public String Pur_workend(Model model, String taskcode, String workendday,
				RedirectAttributes rtts) {
			
			//생산재고 업데이트 이름이랑 수량
				List<OrderRecords_Detail> ORDlist = rep.getdetailrecord(taskcode);
				OrderRecords ORlist = rep.getbasicrecord(taskcode);
				Staff staff= rep.findstaffbynum(ORlist.getStaff_code());
				
				Map updateend = new HashMap<>();
				
				
				updateend.put("taskcode", taskcode);
				updateend.put("workendday", workendday);
				
				int temp = rep.workend(updateend);

				if(temp == 1){
					System.out.println("업무종료날짜등록완료");
				}
				
				
				
				
				for(int i = 0; i<ORDlist.size(); i++){
					
					Map updatepromap = new HashMap<>();
					
					String rmname = ORDlist.get(i).getRmname();
					int rmamount = ORDlist.get(i).getQuantity();

					updatepromap.put("rmname", rmname);
					updatepromap.put("rmamount", rmamount);
					
					
					int proresult =	rep.updateinventory(updatepromap);
					
					if(proresult == 1){
						System.out.println("생산부 재료 업데이트 완료");
					}
				}

			//구매재고 업데이트 이름이랑 수량 
				for(int i = 0; i<ORDlist.size(); i++){
					Map updatepurmap = new HashMap<>();
					
					String rmname = ORDlist.get(i).getRmname();
					int rmamount = ORDlist.get(i).getQuantity();
					
					updatepurmap.put("rmname", rmname);
					updatepurmap.put("rmamount", rmamount);
					
					int rmresult =	rep.updaterm(updatepurmap);
					
					if(rmresult == 1){
						System.out.println("구매부 재료 업데이트 완료");
					}
					
					
				}

			//거래기록 업데이트 거래일, 재료이름, 재료코드, 거래타입, 수량, 가격, 총가격, 수익금, 수익률
			
				for(int i = 0; i<ORDlist.size(); i++){
					
				TradeRecords tr = new TradeRecords();
				tr.setDealdate(workendday);
				tr.setDealtype(staff.getStaff_department());
				double priceforset = ORDlist.get(i).getPrice();
				String Spriceforset = Double.toString(priceforset);
				tr.setPrice(Spriceforset);
				int quanforset = ORDlist.get(i).getQuantity();
				String Iquanforset = Integer.toString(quanforset);
				tr.setQuantity(Iquanforset);
				tr.setRmname(ORDlist.get(i).getRmname());
				
				RawMaterials rmforset = rep.selectRM(ORDlist.get(i).getRmname());
				tr.setRmcode(rmforset.getRmcode());
				double totalforset = ORDlist.get(i).getTotal();
				String Stotalforset = Double.toString(totalforset);
				tr.setTotalprice(Stotalforset);
				
				
				//이익액수 구하기
				double Dcprice = ORDlist.get(i).getPrice();
				double Dtotal = ORDlist.get(i).getTotal();
				double Dquantity = ORDlist.get(i).getQuantity();
				String Savgprice = rmforset.getRmavgprice();
				double Davgprice = Double.parseDouble(Savgprice);
				
				
				double Dprofit = Dquantity*(Dcprice-Davgprice);
				int Iprofit = Integer.parseInt(String.valueOf(Math.round(Dprofit)));
				
				String Sprofit = Integer.toString(Iprofit);
				tr.setProfits(Sprofit);
				
				//이익률 구하기
				
				double Dprorate = (Dcprice*100)/Davgprice;
				Dprorate = Dprorate-100;
				
				int Iprorate = Integer.parseInt(String.valueOf(Math.round(Dprorate)));
				String Sprorate = Integer.toString(Iprorate);
				tr.setProfitrates(Sprorate);
			
				int trresult = rep.AddTradeRecords(tr);
				if(trresult == 1){
					System.out.println("거래기록 업데이트 완료");
				}
				
				}
			
			
			
			return "redirect:Pur_orders";
		}
		
		
		
		
		@ResponseBody
		@RequestMapping(value = "inform_orderlist", method = RequestMethod.GET)
		public ArrayList<ArrayList<String>> inform_orderlist(
				@RequestParam(value = "searchText5", defaultValue = "") String searchText5) {
			System.out.println("재료정보창구매요청재료정보");
			
			ArrayList<ArrayList<String>> orderrmlists = new ArrayList<ArrayList<String>>();
			
			//재료명으로 디테일 가져오기
			List<OrderRecords_Detail> tempord = rep.getordlist(searchText5);
			
			//재료이름으로 검색한 디테일 테이블로 반복문 돌리기
			for(int i = 0; i<tempord.size(); i++){
				ArrayList<String> temp = new ArrayList<String>();
				
				
				//업무번호에 해당하는 기본주문정보
				OrderRecords tttor = rep.getbasicrecord(tempord.get(i).getTaskcode());			
				//기본주문정보 안에 있는 업무종료일 값이 없으면 들어간다. 
				if(tttor.getEnddate()==null){	
			
				//요청코드
				temp.add(tempord.get(i).getTaskcode());
				//요청품목
				temp.add(tempord.get(i).getRmname());			
				//요청수량
				int tempQ = tempord.get(i).getQuantity();
				String StringQ = String.valueOf(tempQ);
				temp.add(StringQ);			
				OrderRecords tempor = rep.getbasicrecord(tempord.get(i).getTaskcode());
				//신청일
				temp.add(tempor.getRequestdate());
				//처리상태
				String status = "승인대기중";		
				if(tempor.getAcceptdate() != null){
					status = "처리중";
				}		
				if(tempor.getEnddate() != null){
					status = "처리완료";
				}
				temp.add(status);
				

				orderrmlists.add(temp);
			}
				
				if(tttor.getEnddate()!=null){
					continue;
				}
				
				
				
			}
			System.out.println(orderrmlists);
			
			
			return orderrmlists;
		}
		
		
		
		//오늘 가격 가져오기
		@ResponseBody
		@RequestMapping(value = "gettodayprice", method = RequestMethod.GET)
		public String gettodayprice(
				@RequestParam(value = "daytext", defaultValue = "") String daytext,
				@RequestParam(value = "nametext", defaultValue = "") String nametext
				) {
			System.out.println("날짜와 이름: "+daytext+nametext);
			
			Map rmpriceMap = new HashMap<>();
			
			
			rmpriceMap.put("daytext", daytext);
			rmpriceMap.put("nametext", nametext);

			String todayprice = rep.getrmpastprice(rmpriceMap);
			
			System.out.println("오늘가격: "+todayprice);
			
			return todayprice;
		}
		
}