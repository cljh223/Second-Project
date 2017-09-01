package com.kilha.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.Product;
import com.kilha.www.vo.Shop;
import com.kilha.www.vo.Staff;
import com.kilha.www.vo.Warehouse;

@Repository
public class MapRep implements MapDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Shop> markerSelect() {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.markerSelect();
	}

	@Override
	public List<Warehouse> warehouseSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.warehouseSelect(searchText);
	}

	@Override
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
	
	
}
