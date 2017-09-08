package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;

@Repository
public class Pur_Repository {

	@Autowired
	SqlSession sqlSession;
	
	
	public List<RawMaterials> rmList(String searchText) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.rmList();
	}


	public List<RM_daily_price> rmChart(String rmname) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.rmChart(rmname);
	}


	public List<RawMaterials> popupsearch(String searchText) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.popupsearch(searchText);
	}

	//거래내역테이블 입력
	public int AddTradeRecords(TradeRecords tr) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.AddTradeRecords(tr);
	}

	//재료정보 하나 가져오기 이름으로
	public RawMaterials selectRM(String rmname) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.selectRM(rmname);
	}


	public int AddRawMaterials(Map rmupdateMap) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.AddRawMaterials(rmupdateMap);
	}

	//재고테이블 입력
	

}
