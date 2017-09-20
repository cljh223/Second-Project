package com.kilha.www.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.stat.descriptive.DescriptiveStatistics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kilha.www.dao.FactoryRepository;
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
	@RequestMapping(value = "pro_Fac1", method = RequestMethod.GET)
	public String home(Model model) {
		try {
		FactoryVO factory = repo.selectFactory(1);
		
		//오늘 날짜 구하기
		SimpleDateFormat formatter = new SimpleDateFormat ("yy/MM/dd", Locale.KOREA );
		Date currentTime = new Date();
		String today = formatter.format ( currentTime );
		
		MathForProduction math = new MathForProduction();
		String yesterday ="17/09/07";
		
		List<ProductVO> dailyList = repo.DailyProduct(yesterday, 1); // 1공장에서 생산되는 모든 제품(여기에today가 들어가야함)
		List<ProductVO> ProductA = repo.SelectDailyproduct1(yesterday, 1, "p01");//1공장 1제품 lineA리스트
		List<ProductVO> ProductA1 = repo.SelectDailyproduct2(yesterday, 1, "p01_1","A1");//1공장 1제품 lineA리스트
		List<RamenVO> ramenList = repo.factory1_RamenList("1st Factory");
		RamenVO ramen_A1 = repo.selectRamen("p01_1","A1"); // 제품명 p01, 라인번호 A1 라면 출력
		RamenVO ramen_A2 = repo.selectRamen("p01_2","A2"); // 제품명 p01, 라인번호 A2 라면 출력
		System.out.println(ramen_A1);
		System.out.println(ramen_A2);
		double usl = 0.0;
		double lsl = 0.0;
		usl = ramen_A1.getUsl();
		lsl = ramen_A1.getLsl();
		
		
		//각 라면의 생산량
		int lineA1 = repo.SelectDailyproduct2(yesterday, 1, "p01_1", "A1").size();
		int lineA2 = repo.SelectDailyproduct2(yesterday, 1, "p01_2", "A2").size();
		int lineB1 = repo.SelectDailyproduct2(yesterday, 1, "p02_1", "B1").size();
		int lineB2 = repo.SelectDailyproduct2(yesterday, 1, "p02_2", "B2").size();
		int lineC1 = repo.SelectDailyproduct2(yesterday, 1, "p03_1", "C1").size();
		int lineC2 = repo.SelectDailyproduct2(yesterday, 1, "p03_2", "C2").size();
		
		System.out.println(lineA1);
		
		//1공장에서 생산하는 라면의 기본정보를 불러와서 해당 라인의 어제자 총 생산량을 추가한다.
		for (int i = 0; i < ramenList.size(); i++) {
			if(ramenList.get(i).getR_num().equals("p01_1") && ramenList.get(i).getLine_num().equals("A1")) {
				ramenList.get(i).setRecentAmount(lineA1);
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
				ramenList.get(i).setRecentAmount(lineA1);
			}
			if(ramenList.get(i).getR_num().equals("p03_2") && ramenList.get(i).getLine_num().equals("C2")) {
				ramenList.get(i).setRecentAmount(lineA1);
			}
		}
		
		//1제품, 생산라인 A인 라면VO에 총생산량과 이미지url 추가
		ramen_A1.setRecentAmount(lineA1);
		ramen_A1.setImageurl("images/pro0.jpg");
		ramen_A2.setRecentAmount(lineA2);
		ramen_A2.setImageurl("images/pro0.jpg");
		
		//가동률 계산
		double operating = (dailyList.size()/(double)factory.getMaxamount())*100;
		double result = Math.round(operating*100.0)/100.0;
		
		List<DistributionVO> distribution = new ArrayList<>();
		DistributionVO data = null;
		int min = 120;
		int count = 0;
		//그래프로 보낼 구간별 데이터
		for (int i = 0; i < 15; i++) {
			data = new DistributionVO();
			count = 0;
			for (int j = 0; j < ProductA1.size(); j++) {
				if(ProductA1.get(j).getWeight()>=min && ProductA1.get(j).getWeight()<(min+1) ) {
					count++;
				}
			}
			data.setDistribution(count);
			data.setRange(min);
			distribution.add(data);
			min++;
		}
		System.out.println(distribution);
		
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
				chartData += "latitude" + " :" +400+", ";
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
				chartData += "latitude" + " :" +400+", ";
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
		for (int i = 0; i < ProductA1.size(); i++) {
			stats.addValue(ProductA1.get(i).getWeight());
		}
		double mean = Math.round((stats.getMean()*100d)/100d);
		double std = Math.round((stats.getStandardDeviation()*100d)/100d);

		
		//양품률 계산
		
		
		//불량갯수
		int fault = 0;
		for (int i = 0; i < ProductA1.size(); i++) {
			if(ProductA1.get(i).getWeight()<=125 || ProductA1.get(i).getWeight()>=131) {
				fault++;
			}	
		}
		double faultrate = Math.round((((double)fault/(double)lineA1)*100)*100.0)/100.0;
		double probability = (((double)lineA1-fault))/(double)lineA1;
		
		//시그마 수준 계산
		double constant = 1.5;
		double sigma = 0.0; 
		sigma = Math.round((math.getNormdiv(probability, 0.0, 1.0) + constant)*100.0)/100.0;
		
		
		//작업 효율
		ProductinfoVO product = repo.EfficiencyData("17/09/07", "p01_1", "A1");
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
		model.addAttribute("ramen", ramen_A1); // 1공장 1라인에서 생산중인 상품의 생산 정보
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
		
		}catch(MathArithmeticException mae){
			mae.printStackTrace();
		}
		return "product/test";
	}
	
	@RequestMapping(value="fac1", method = RequestMethod.GET)
	public String fac1(Model model){
		FactoryVO factory = repo.selectFactory(1);
		List<ProductVO> dailyList = repo.DailyProduct("17/09/07", 1);//여기 원래 오늘날짜가 들어가야함
		
		
		double operating = (dailyList.size()/(double)factory.getMaxamount())*100;
		double result = Math.round(operating*100d)/100d;
		
		model.addAttribute("factory", factory);
		model.addAttribute("operating", result);
		
		return "test";
	}
	
	@RequestMapping(value="pro_Fac2", method = RequestMethod.GET)
	public String fac2(Model model){
		FactoryVO factory = repo.selectFactory(2);
		model.addAttribute("factory", factory);
		return "product/test";
	}
	
	@RequestMapping(value="pro_Gradient", method = RequestMethod.GET)
	public String test1(){
		return "product/test1";
	}
	
}