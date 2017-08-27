package com.kilha.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.Shop;

@Repository
public class MapRep implements MapDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Shop> shopSelect() {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		List<Shop> list = dao.shopSelect();
		System.out.println(list);
		return list;
	}
	
	
}
