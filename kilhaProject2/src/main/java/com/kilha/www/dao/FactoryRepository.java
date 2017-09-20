package com.kilha.www.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.product.*;

@Repository
public class FactoryRepository {

	@Autowired
	SqlSession sqlsession;

	public FactoryVO selectFactory(int fc_num){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.Factory_info(fc_num);
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
	
	
	public List<ProductVO> DailyProduct(String date, int fc_num){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("fc_num", fc_num);
		return dao.Dailyproduct(map);
	}
	
	
	//라인 구별 미포함
	public List<ProductVO> SelectDailyproduct1(String date, int fc_num, String r_num){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("fc_num", fc_num);
		map.put("r_num", r_num);
		return dao.SelectDailyproduct1(map);
	}
	
	
	//라인 구별 포함
	public List<ProductVO> SelectDailyproduct2(String date, int fc_num, String r_num, String line_num){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		Map map = new HashMap<>();
		map.put("today", date);
		map.put("fc_num", fc_num);
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
		
}
		

 
