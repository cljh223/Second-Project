package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.common.Product;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.SupplyVo;

@Repository
public class MapRep {
	@Autowired
	SqlSession sqlSession;

	public List<Shop> markerSelect() {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.markerSelect();
	}

	public List<Stock> warehouseSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.warehouseSelect(searchText);
	}

	public List<Staff> staffSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.staffSelect(searchText);
	}

	public List<Shop> shopSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.shopSelect(searchText);
	}

	public List<Product> productSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.productSelect(searchText);
	}
	
	public boolean processAdd(Map<String, String>processMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		if(dao.processAdd(processMap)>0){
			return true;
		}
		return false;
	}
	
	public String shopNameSelect(int shopCode){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.shopNameSelect(shopCode);
	}
	
	public boolean supplyAdd(Map supplyMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		if(dao.supplyAdd(supplyMap)>0){
			return true;
		}
		return false;
	}
	
	public SupplyVo popupNowEstimate(Map estimateMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.popupNowEstimate(estimateMap);
	}

	public List<SupplyVo> popupAllEstimateView(Map estimateMap) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.popupAllEstimateView(estimateMap);
	}
	
}
