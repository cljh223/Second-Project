package com.kilha.www.dao;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.product.*;

@Repository
public class FactoryRepository {

	@Autowired
	SqlSession sqlsession;

	public FactoryVO selectFactory(int f_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.Factory_info(f_num);
	}

	public List<RamenVO> factory1_RamenList(String r_factory) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		List<RamenVO> ramenList = dao.Ramen_info(r_factory);
		return ramenList;
	}

	public RamenVO selectRamen(String r_num, String line_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("r_num", r_num);
		map.put("line_num", line_num);
		RamenVO result = dao.selectRamen(map);
		return result;
	}
	
	public List<ProductinfoVO> allProduct(){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.allProduct();
	}

	public List<ProductVO> DailyProduct(String date, int f_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("f_num", f_num);
		return dao.Dailyproduct(map);
	}

	// 라인 구별 미포함
	public List<ProductVO> SelectDailyproduct1(String date, int f_num, String r_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("f_num", f_num);
		map.put("r_num", r_num);
		return dao.SelectDailyproduct1(map);
	}

	// 라인 구별 포함
	public List<ProductVO> SelectDailyproduct2(String date, int f_num, String r_num, String line_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("f_num", f_num);
		map.put("r_num", r_num);
		map.put("line_num", line_num);
		return dao.SelectDailyproduct2(map);
	}

	public int Counting(String date, String r_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("r_num", r_num);
		return dao.Counting(map);
	}

	public ProductinfoVO EfficiencyData(String date, String r_num, String line_num) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("r_num", r_num);
		map.put("line_num", line_num);
		return dao.EfficiencyData(map);
	}

	// 레시피 정보
	public RecipeVO getRecipe(String r_num, String r_name) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("r_num", r_num);
		map.put("r_name", r_name);
		return dao.getRecipe(map);
	}

	// tatalinfo 가져오기
	public List<TotalinfoVO> getTotalInfo() {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.getTotalInfo();
	}

	// 구매 부문 재료 가격 테이블에서 재료 이름과 날짜로 가격 정보 가져오기
	public MaterialPriceVO getPrice(String rmname, String rmdate) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		HashMap<String, String> map = new HashMap<>();
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
		try {
			date = format1.parse(rmdate);
			SimpleDateFormat format2 = new SimpleDateFormat("yy/MM/dd");
			String stringdate = format2.format(date);
			map.put("rmname", rmname);
			map.put("rmdate", stringdate);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dao.getPrice(map);
	}

	//해당 상품의 총 자재비용 정보 가져오기
	public List<TotalinfoVO> getTotalPrice(TotalinfoVO totalinfo) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
		try {
			date = format1.parse(totalinfo.getBuydate());
			SimpleDateFormat format2 = new SimpleDateFormat("yy/MM/dd");
			String buydate = format2.format(date);
			totalinfo.setBuydate(buydate);
			date = format1.parse(totalinfo.getStartdate());
			String startdate = format2.format(date);
			totalinfo.setStartdate(startdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dao.getTotalPrice(totalinfo);
	}
	
	//생산량, 투입인원 데이터 셋 가져오기
	public double[][] getInputMan(String r_name){
		
		System.out.println("라면 : "+ r_name);
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		List<TotalinfoVO> data = dao.getInputMan(r_name);
		System.out.println(data);
		double[][] resultArray = new double[data.size()][2];
		for (int i = 0; i < data.size(); i++) {
			resultArray[i][0] = data.get(i).getT_amount();
			resultArray[i][1] = data.get(i).getT_man();
		}
		System.out.println("Repo : " + resultArray[0][0] +", " + resultArray);
		return resultArray;
	}
	
	//생산량, 자재비용 데이터 셋 가져오기
	public double[][] getCost(String r_name){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		List<TotalinfoVO> data = dao.getCost(r_name);
		double[][] resultArray = new double[data.size()][2];
		for (int i = 0; i < data.size(); i++) {
			resultArray[i][0] = data.get(i).getT_amount();
			resultArray[i][1] = data.get(i).getT_cost();
		}
			return resultArray;
	}
	
	//생산량, 생산기간 셋 가져오기
	public double[][] getTime(String r_name){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		List<TotalinfoVO> data = dao.getTime(r_name);
		double[][] resultArray = new double[data.size()][2];
		for (int i = 0; i < data.size(); i++) {
			resultArray[i][0] = data.get(i).getT_amount();
			resultArray[i][1] = data.get(i).getT_time();
		}
			return resultArray;
	}
			
		
		
	
	@RequestMapping
	public int regist(ProductinfoVO product) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		int result = dao.regist(product);
		return result;
	}

	@RequestMapping
	public List<ProductinfoVO> list() {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		List<ProductinfoVO> list = dao.list();
		return list;
	}
	
	public List<InventoryVO> getInventory(){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.getInventory();
	}
	
	public int totalInsert(TotalinfoVO totalinfo) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.totalInsert(totalinfo);
	}
	
	public int countPur(TotalinfoVO totalinfo) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.countPur(totalinfo);
	}
	
	public InventoryVO materialAmount(String material){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("materialname", material);
		return dao.materialAmount(map);
	}
	
	public int updateInven(String material ,double amount) {
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("materialname", material);
		map.put("amount", amount);
		return dao.updateInven(map);
	}
}
