package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.Purchase.OrderRecords;
import com.kilha.www.vo.Purchase.OrderRecords_Detail;
import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;
import com.kilha.www.vo.common.Staff;

@Repository
public class Pur_Repository {

	@Autowired
	SqlSession sqlSession;
	
	
	public List<RawMaterials> rmList() {
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


	//거래기록 리스트
	public List<TradeRecords> trList() {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.trList();
	}

	//모달창 직원 리스트 뿌려주기
	public List<Staff> StaffList() {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.StaffList();
	}

	//모달창 검색으로 실시간 직원이름찾기
	public List<Staff> staffsearch(String searchText3) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.staffsearch(searchText3);
	}

	//이름으로 스태프 하나 가져오기
	public Staff fineonestaff(String staffname) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.fineonestaff(staffname);
	}

	//주문기본정보 입력
	public int insertorder(OrderRecords OR) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.insertorder(OR);
	}

	//주문디테일정보 입력
	public int insertorderdetail(OrderRecords_Detail ORD) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.insertorderdetail(ORD);
	}


	public int ordercount() {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.ordercount();
	}


	public List<OrderRecords> orderlist() {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.orderlist();
	}


	public Staff findstaffbynum(int tempstaff) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.findstaffbynum(tempstaff);
	}


	public OrderRecords getbasicrecord(String taskcode) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.getbasicrecord(taskcode);
	}

	
	public List<OrderRecords_Detail> getdetailrecord(String taskcode) {
		Pur_DAO dao = sqlSession.getMapper(Pur_DAO.class);
		return dao.getdetailrecord(taskcode);
	}

	//재고테이블 입력
	

}
