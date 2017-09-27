package com.kilha.www.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.swing.plaf.synth.SynthSpinnerUI;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kilha.www.dao.FactoryRepository;
import com.kilha.www.util.GradientDescent;
import com.kilha.www.util.MathForProduction;
import com.kilha.www.vo.product.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	@Autowired
	FactoryRepository repo;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "pro_Fac", method = RequestMethod.GET)
	public String home(Model model, int f_num, String r_num, String line_num, String f_name) {
		try {
		FactoryVO factory = repo.selectFactory(f_num);
		
		//오늘 날짜 구하기
		SimpleDateFormat formatter = new SimpleDateFormat ("yy/MM/dd", Locale.KOREA );
		Date currentTime = new Date();
		String today = formatter.format ( currentTime );
		
		MathForProduction math = new MathForProduction();
		String yesterday ="17/09/07";
		
		List<ProductVO> dailyList = repo.DailyProduct(yesterday, f_num); // 1공장에서 생산되는 모든 제품(여기에today가 들어가야함)
		List<ProductVO> dailyProduct = repo.SelectDailyproduct2(yesterday, f_num, r_num, line_num);//1공장 1제품 해당 라인의 상품 정보
		int dailyamount = repo.SelectDailyproduct2(yesterday, f_num, r_num, line_num).size();
		List<RamenVO> ramenList = repo.factory1_RamenList(f_name);
		RamenVO thisRamen = repo.selectRamen(r_num, line_num);
		double usl = 0.0;
		double lsl = 0.0;
		usl = thisRamen.getUsl();
		lsl = thisRamen.getLsl();
		
		
		//각 라면의 생산량
		int lineA1 = repo.SelectDailyproduct2(yesterday, f_num, "p01_1", "A1").size();
		int lineA2 = repo.SelectDailyproduct2(yesterday, f_num, "p01_2", "A2").size();
		int lineB1 = repo.SelectDailyproduct2(yesterday, f_num, "p02_1", "B1").size();
		int lineB2 = repo.SelectDailyproduct2(yesterday, f_num, "p02_2", "B2").size();
		int lineC1 = repo.SelectDailyproduct2(yesterday, f_num, "p03_1", "C1").size();
		int lineC2 = repo.SelectDailyproduct2(yesterday, f_num, "p03_2", "C2").size();
		int lineD1 = repo.SelectDailyproduct2(yesterday, f_num, "p04_1", "D1").size();
		int lineD2 = repo.SelectDailyproduct2(yesterday, f_num, "p04_2", "D2").size();
		int lineE1 = repo.SelectDailyproduct2(yesterday, f_num, "p05_1", "E1").size();
		int lineE2 = repo.SelectDailyproduct2(yesterday, f_num, "p05_2", "E2").size();
		
		
		//1공장에서 생산하는 라면의 기본정보를 불러와서 해당 라인의 어제자 총 생산량을 추가한다.
		for (int i = 0; i < ramenList.size(); i++) {
			if(ramenList.get(i).getR_num().equals("p01_1") && ramenList.get(i).getLine_num().equals("A1")) {
				ramenList.get(i).setRecentAmount(repo.SelectDailyproduct2(yesterday, f_num, "p01_1", "A1").size());
			}
			if(ramenList.get(i).getR_num().equals("p01_2") && ramenList.get(i).getLine_num().equals("A2")) {
				ramenList.get(i).setRecentAmount(lineA2);
			}
			if(ramenList.get(i).getR_num().equals("p02_1") && ramenList.get(i).getLine_num().equals("B1")) {
				ramenList.get(i).setRecentAmount(lineB1);
			}
			if(ramenList.get(i).getR_num().equals("p02_2") && ramenList.get(i).getLine_num().equals("B2")) {
				ramenList.get(i).setRecentAmount(lineB2);
			}
			if(ramenList.get(i).getR_num().equals("p03_1") && ramenList.get(i).getLine_num().equals("C1")) {
				ramenList.get(i).setRecentAmount(lineC1);
			}
			if(ramenList.get(i).getR_num().equals("p03_2") && ramenList.get(i).getLine_num().equals("C2")) {
				ramenList.get(i).setRecentAmount(lineC2);
			}
			if(ramenList.get(i).getR_num().equals("p04_1") && ramenList.get(i).getLine_num().equals("D1")) {
				ramenList.get(i).setRecentAmount(lineD1);
			}
			if(ramenList.get(i).getR_num().equals("p04_2") && ramenList.get(i).getLine_num().equals("D2")) {
				ramenList.get(i).setRecentAmount(lineD2);
			}
			if(ramenList.get(i).getR_num().equals("p05_1") && ramenList.get(i).getLine_num().equals("E1")) {
				ramenList.get(i).setRecentAmount(lineE1);
			}
			if(ramenList.get(i).getR_num().equals("p05_2") && ramenList.get(i).getLine_num().equals("E2")) {
				ramenList.get(i).setRecentAmount(lineE2);
			}
		}
		
		//1제품, 생산라인 A인 라면VO에 총생산량과 이미지url 추가
		if(r_num.equals("p01_1")) {
			thisRamen.setRecentAmount(lineA1);
			thisRamen.setImageurl("images/ansung_ramen.jpg");
		}else if(r_num.equals("p01_2")) {
			thisRamen.setRecentAmount(lineA2);
			thisRamen.setImageurl("images/ansung_ramen.jpg");
		}else if(r_num.equals("p02_1")) {
			thisRamen.setRecentAmount(lineB1);
			thisRamen.setImageurl("images/sin_ramen.jpg");
		}else if(r_num.equals("p02_2")) {
			thisRamen.setRecentAmount(lineB2);
			thisRamen.setImageurl("images/sin_ramen.jpg");
		}else if(r_num.equals("p03_1")) {
			thisRamen.setRecentAmount(lineC1);
			thisRamen.setImageurl("images/nugool_ramen.jpg");
		}else if(r_num.equals("p03_2")) {
			thisRamen.setRecentAmount(lineC2);
			thisRamen.setImageurl("images/nugool_ramen.jpg");
		}else if(r_num.equals("p04_1")) {
			thisRamen.setRecentAmount(lineD1);
			thisRamen.setImageurl("images/anchovy_ramen.jpg");
		}else if(r_num.equals("p04_2")) {
			thisRamen.setRecentAmount(lineD2);
			thisRamen.setImageurl("images/anchovy_ramen.jpg");
		}else if(r_num.equals("p05_1")) {
			thisRamen.setRecentAmount(lineE1);
			thisRamen.setImageurl("images/sari_ramen.jpg");
		}else if(r_num.equals("p05_2")) {
			thisRamen.setRecentAmount(lineE2);
			thisRamen.setImageurl("images/sari_ramen.jpg");
		}
		
		//가동률 계산
		double operating = (dailyList.size()/(double)factory.getMaxamount())*100;
		double result = Math.round(operating*100.0)/100.0;
		
		List<DistributionVO> distribution = new ArrayList<>();
		DistributionVO data = null;
		int min = thisRamen.getLsl()-5;
		int count = 0;
		//그래프로 보낼 구간별 데이터
		for (int i = 0; i < 15; i++) {
			data = new DistributionVO();
			count = 0;
			for (int j = 0; j < dailyProduct.size(); j++) {
				if(dailyProduct.get(j).getWeight()>=min && dailyProduct.get(j).getWeight()<(min+1) ) {
					count++;
				}
			}
			data.setDistribution(count);
			data.setRange(min);
			distribution.add(data);
			min++;
		}
		
		//javascript로 보낼 String
		String chartData = "[";
		for (int i = 0; i < distribution.size(); i++) {
			//규격 하한
			if(distribution.get(i).getRange() == lsl) {
				chartData += "{";
				chartData += "category"+ " :" + '"' + distribution.get(i).getRange() + '"'+ ", ";
				chartData += "distance"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "duration"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "townName"+ " :" + '"' + "규격 하한" +'"'+", ";
				chartData += "townName2" + " :" + '"' +"LSL: " +lsl+"g" +'"'+", ";
				chartData += "townSize" + " :" +18+ ", ";
				chartData += "latitude" + " :" +300+", ";
				chartData += "alpha" + " :" +0.4+", ";
				chartData += "bulletCalss" + " :" + '"'+"lastBullet" +'"';
				chartData +="},";
			}
			
			//규격 상한
			if(distribution.get(i).getRange() == usl-1) {
				chartData += "{";
				chartData += "category"+ " :" + '"' + distribution.get(i).getRange() + '"'+ ", ";
				chartData += "distance"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "duration"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "townName"+ " :" + '"' + "규격 하한" +'"'+", ";
				chartData += "townName2" + " :" + '"' +"USL: "+usl+"g"+'"'+", ";
				chartData += "townSize" + " :" +18+ ", ";
				chartData += "latitude" + " :" +300+", ";
				chartData += "alpha" + " :" +0.4+", ";
				chartData += "bulletCalss" + " :" + '"'+"lastBullet" +'"';
				chartData +="},";
			}
			
			if(i == distribution.size()-1) {
				chartData += "{";
				chartData += "category"+ " :" + '"' + distribution.get(i).getRange() + '"'+ ", ";
				chartData += "distance"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "duration"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData +="}];";
			}
			
			else if(distribution.get(i).getRange() != lsl && distribution.get(i).getRange() != usl-1){
				chartData += "{";
				chartData += "category"+ " :" + '"' + distribution.get(i).getRange() + '"'+ ", ";
				chartData += "distance"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData += "duration"+ " :" + '"' + distribution.get(i).getDistribution() + '"'+ ", ";
				chartData +="},";
			}
			
		}
		
		
		//평균과 표준편차
		DescriptiveStatistics stats = new DescriptiveStatistics();
		for (int i = 0; i < dailyProduct.size(); i++) {
			stats.addValue(dailyProduct.get(i).getWeight());
		}
		double mean = Math.round((stats.getMean()*100d)/100d);
		double std = Math.round((stats.getStandardDeviation()*100d)/100d);

		
		//불량갯수
		int fault = 0;
		for (int i = 0; i < dailyProduct.size(); i++) {
			if(dailyProduct.get(i).getWeight()<=lsl || dailyProduct.get(i).getWeight()>=usl) {
				fault++;
			}	
		}
		double faultrate = Math.round((((double)fault/(double)dailyamount)*100)*100.0)/100.0;
		double probability = (((double)dailyamount-fault))/(double)dailyamount;
		
		//시그마 수준 계산
		double constant = 1.5;
		double sigma = 0.0; 
		sigma = Math.round((math.getNormdiv(probability, 0.0, 1.0) + constant)*100.0)/100.0;
		
		//작업 효율
		ProductinfoVO product = repo.EfficiencyData("17/09/07", r_num, line_num);
		double workEff = math.workEfficiency(product.getInputman(), product.getOperatingtime(), product.getStandardtime(), product.getAmount());
		double workeff = Math.round(workEff*100.0)/100.0;
		//시간 가동률
		double timeOperating = math.timeOperatingRate(product.getWorktime(), product.getLoadtime());
		double timeeff = Math.round(timeOperating*100.0)/100.0;
		
		//성능 가동률
		double performance = math.performanceOperatingRate(product.getStandardtime(), product.getAmount(), product.getWorktime());
		double performeff = Math.round(performance*100.0)/100.0;
		
		//종합 설비 가동률
		double total = math.totalFacilityEfficiency(product.getStandardtime(), product.getAmount(), product.getLoadtime(), product.getGoodrate());
		double totalrate = Math.round(total*100.0)/100.0;
		
		
		model.addAttribute("factory", factory);//공장 기본 정보
		model.addAttribute("operating", result);//공장 생산 달성률
		model.addAttribute("ramenList", ramenList);//1공장에서 생산 중인 라면 상품 정보
		model.addAttribute("ramen", thisRamen); // 1공장 1라인에서 생산중인 상품의 생산 정보
		model.addAttribute("chartData", chartData);
		model.addAttribute("mean", mean);
		model.addAttribute("std", std);
		model.addAttribute("faultrate", faultrate);
		model.addAttribute("fault", fault);
		model.addAttribute("sigma", sigma);
		model.addAttribute("workeff", workeff);
		model.addAttribute("timeeff", timeeff);
		model.addAttribute("performeff", performeff);
		model.addAttribute("totalrate", totalrate);
		model.addAttribute("f_num", f_num);
		}catch(MathArithmeticException mae){
			mae.printStackTrace();
		}
		return "product/test";
	}
	
	
	
	
	//현재 일단 테스트용
	@RequestMapping(value="pro_Gradient", method = RequestMethod.GET)
	public String test1(Model model){
		//totalifo 리스트로 가져오기
		List<TotalinfoVO> totalInfoList = repo.getTotalInfo();
		model.addAttribute("message", "aaa");
		model.addAttribute("totalinfo", totalInfoList);
		return "product/test1";
	}
	
	@RequestMapping(value="pro_goGradient", method = RequestMethod.POST)
	public String test1(Model model, String searchType, String r_name, double searchValue){
		//totalifo 리스트로 가져오기
		String message = "datain";
		//다이나믹 테이블에 뿌려주기용
		List<TotalinfoVO> totalInfoList = repo.getTotalInfo();
		double[][] dataset = new double[totalInfoList.size()][2];
		//타입에 맞게 (생산량, 투입인원) (생산량, 생산 시간) (생산량, 재료 비용)의 데이터 셋을 뽑아 와서 보내준다.
		int maximum = 0;
		int interval = 0;
		if(searchType.equals("MAN")) {
			dataset = repo.getInputMan(r_name);
			maximum = 35;
			interval = 5;
		}else if(searchType.equals("COST")) {
			dataset = repo.getCost(r_name);
			maximum = 1200000;
			interval = 100000;
		}else if(searchType.equals("TIME")) {
			dataset = repo.getTime(r_name);
			maximum = 30;
			interval = 2;
		}
		
		//차트로 보내기 위한 Stringset
		String realdata = "[";
		for (int i = 0; i < dataset.length; i++) {
			realdata += "["+dataset[i][0]+", "+dataset[i][1]+"], ";
			if(i==dataset.length-1) {
				realdata += "["+dataset[i][0]+", "+dataset[i][1]+"]";
			}
		}
		realdata += "]";
		
		//선형회귀분석 선형 그래프 도출
		double learningRate = 0.00001;
		double[][] linedata = new double[34][2];
		String lineStringdata ="[";
		GradientDescent gd = new GradientDescent(0,0);
		gd.train(learningRate, dataset);//가중치와 bias값 계산
		linedata = gd.linegraph(gd.getTheta0(), gd.getTheta1()); // 선그래프 그리기 위한 데이터셋
		for (int i = 0; i < linedata.length; i++) {
			lineStringdata += "["+linedata[i][0]+", "+linedata[i][1]+"], ";
			if(i==linedata.length-1) {
				lineStringdata += "["+linedata[i][0]+", "+linedata[i][1]+"]";
			}
		}
		lineStringdata += "]";
		double result = Math.round(gd.getHypothesisResult(searchValue)*100.0)/100.0;
		
		model.addAttribute("totalinfo", totalInfoList);
		model.addAttribute("dataset", realdata);
		model.addAttribute("linedata", lineStringdata);
		model.addAttribute("searchType", searchType);
		model.addAttribute("searchValue", searchValue);
		model.addAttribute("maximum", maximum);
		model.addAttribute("interval", interval);
		model.addAttribute("result", result);
		model.addAttribute("message", message);
		return "product/test1";
	}
	
	@RequestMapping(value = "pro_RegistForm", method = RequestMethod.GET)
	public String produce_regist(Model model) {
		List<ProductinfoVO> list = repo.list();
		List<InventoryVO> inventory = repo.getInventory();
		String message ="ok";
		double rate = 0.0;
		for (int i = 0; i < inventory.size(); i++) {
			rate = (inventory.get(i).getP_amount()/inventory.get(i).getM_min())*100;
			inventory.get(i).setStackrate(rate);
		}
		model.addAttribute("list", list);
		model.addAttribute("inventory", inventory);
		model.addAttribute("message", message);
		return "product/regist";
	}
	
	@RequestMapping(value = "pro_Regist", method = RequestMethod.POST)
	public String produce_regist(Model model, ProductinfoVO product) {
		List<ProductinfoVO> proList = repo.allProduct();
		product.setInfo_num(proList.get(proList.size()-1).getInfo_num()+1);
		product.setGoodrate(((product.getAmount()-product.getFault())/product.getAmount())*100);
		product.setCapa(2880);
		RecipeVO material =  repo.getRecipe(product.getR_num(), product.getR_name());
		double amount = product.getAmount();
		String message ="ok";
		if(amount*material.getWheat()/1000>repo.materialAmount("wheat").getP_amount()) {
			message +="밀가루의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getPotatostarch()/1000>repo.materialAmount("potatostarch").getP_amount()) {
			message +="감자전분의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getPalmoil()/1000>repo.materialAmount("palmoil").getP_amount()) {
			message +="팜오일의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getDriedbeef()/1000>repo.materialAmount("driedbeef").getP_amount()) {
			message +="말린소고기의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getAnchovy()/1000>repo.materialAmount("anchovy").getP_amount()) {
			message +="말린멸치의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getGarlic()/1000>repo.materialAmount("garlic").getP_amount()) {
			message +="마늘의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getOnion()/1000>repo.materialAmount("onion").getP_amount()) {
			message +="대파의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getCarrot()/1000>repo.materialAmount("carrot").getP_amount()) {
			message +="당근의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getSalty()/1000>repo.materialAmount("salt").getP_amount()) {
			message +="소금의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getSugar()/1000>repo.materialAmount("sugar").getP_amount()) {
			message +="설탕의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getRedpepperpowder()/1000>repo.materialAmount("redpepperpowder").getP_amount()) {
			message +="고추가루의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getMushroom()/1000>repo.materialAmount("mushroom").getP_amount()) {
			message +="말린버섯의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		if(amount*material.getSeaweed()/1000>repo.materialAmount("seaweed").getP_amount()) {
			message +="말린미역의 재고량이 부족합니다.";
			model.addAttribute("message", message);
			return "redirect:pro_RegistForm";
		}
		
		repo.updateInven("wheat",repo.materialAmount("wheat").getP_amount() - (amount*material.getWheat()/1000));
		repo.updateInven("potatostarch", repo.materialAmount("potatostarch").getP_amount()-(amount*material.getWheat()/1000));
		repo.updateInven("palmoil", repo.materialAmount("palmoil").getP_amount() - (amount*material.getPalmoil()/1000));
		repo.updateInven("driedbeef", repo.materialAmount("driedbeef").getP_amount() - (amount*material.getDriedbeef()/1000));
		repo.updateInven("anchovy", repo.materialAmount("anchovy").getP_amount() - (amount*material.getAnchovy()/1000));
		repo.updateInven("garlic", repo.materialAmount("garlic").getP_amount() - (amount*material.getGarlic()/1000));
		repo.updateInven("onion", repo.materialAmount("onion").getP_amount() - (amount*material.getOnion()/1000));
		repo.updateInven("carrot", repo.materialAmount("carrot").getP_amount() - (amount*material.getCarrot()/1000));
		repo.updateInven("salt", repo.materialAmount("salt").getP_amount() - (amount*material.getSalty()/1000));
		repo.updateInven("sugar", repo.materialAmount("sugar").getP_amount() - (amount*material.getSugar()/1000));
		repo.updateInven("redpepperpowder", repo.materialAmount("redpepperpowder").getP_amount() - (amount*material.getRedpepperpowder()/1000));
		repo.updateInven("mushroom", repo.materialAmount("mushroom").getP_amount() - (amount*material.getMushroom()/1000));
		repo.updateInven("seaweed", repo.materialAmount("seaweed").getP_amount() - (amount*material.getSeaweed()/1000));
		
		repo.regist(product);
		return "redirect:pro_RegistForm";
	}
	
	@RequestMapping(value="goRegist", method=RequestMethod.POST)
	public String goRegist(Model model, TotalinfoVO totalinfo) {
		try {
			List<TotalinfoVO> totalList = repo.getTotalInfo();
			//t_num을 생성하여 setting
			int t_num = totalList.get(totalList.size()-1).getT_num()+1;//t_num
			totalinfo.setT_num(t_num);
			
			//t_time setting
			SimpleDateFormat transFormat = new SimpleDateFormat("MM-yy-dd");
			Date end = transFormat.parse(totalinfo.getEnddate());
			Date start = transFormat.parse(totalinfo.getStartdate());
			Date buy = transFormat.parse(totalinfo.getBuydate());
			double time = end.getTime() - start.getTime();
			double t_time = time/(24.0 * 60.0 * 60.0 * 1000.0); //t_time
			totalinfo.setT_time(t_time);
			String message ="";
			if(repo.countPur(totalinfo) != 13) {
				message += "잘못된 구매 날짜";
				model.addAttribute("message", message);
				model.addAttribute("totalinfo", totalList);
				
				return "product/test1";
			}
			repo.totalInsert(totalinfo);
			model.addAttribute("message", message);
			model.addAttribute("totalinfo", totalList);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "product/test1";
	}
	
}