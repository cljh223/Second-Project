package com.kilha.www.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Shipping;


@Repository
public class LogisticsRepository {
	
	@Autowired
	SqlSession sqlSession;

	public int ordering(Shipping shipping) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		int result = dao.ordering(shipping);
		return result;
	}

	public List<Shipping> myOrderList(int userid) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Shipping>list = dao.myOrderList(userid);
		return list;
	}

	public Staff loginCheck(int staff_code, String staff_password) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = new HashMap<>();
		map.put("staff_code", staff_code);
		map.put("staff_password", staff_password);
		Staff staff = dao.loginCheck(map);
		return staff;
	}

	public Shipping selectOne(int orderNum) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = new HashMap<>();
		Shipping shipping = dao.selectOne(orderNum);
		return shipping;
	}

	public List<Shipping> resultList(String status) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Shipping>list = dao.resultList(status);
		return list;
	}

	public int updateList(int orderNum, String changeStatus) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = new HashMap<>();
		map.put("orderNum", orderNum);
		map.put("changeStatus", changeStatus);
		int result = dao.updateList(map);
		return result;
	}

	public int deleteList(int orderNum) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		int result = dao.deleteList(orderNum);
		return result;
	}

}
