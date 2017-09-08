package com.kilha.www.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.product.FactoryVO;
import com.kilha.www.vo.sal.ProductVO;

@Repository
public class FactoryRepository {

	@Autowired
	SqlSession sqlsession;

	public FactoryVO selectFactory1(int fac_num){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.factory1(fac_num);
	}
	
	public List<ProductVO> DailyProduct(){
		FactoryDAO dao = sqlsession.getMapper(FactoryDAO.class);
		return dao.Dailyproduct();
	}
		
}
		

 