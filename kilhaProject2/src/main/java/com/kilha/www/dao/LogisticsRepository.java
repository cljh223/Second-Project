package com.kilha.www.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Section;
import com.kilha.www.vo.logistics.Shipping;
import com.kilha.www.vo.logistics.Truck;
import com.kilha.www.vo.sal.Shop;


@Repository
public class LogisticsRepository {
	
	@Autowired
	SqlSession sqlSession;

	public int ordering(Shipping shipping) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		int result = dao.ordering(shipping);
		return result;
	}

	public List<Map<String, Object>> myOrderList(int userid) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Map<String, Object>>list = dao.myOrderList(userid);
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

	public Map<String, Object> selectOne(int orderNum) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = dao.selectOne(orderNum);
		return map;
	}

	public List<Map<String, Object>> resultList(String status) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Map<String, Object>>list = dao.resultList(status);
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

	public Staff searchDept(int userid) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Staff staff = dao.searchDept(userid);
		return staff;
	}

	public List<Map<String, Object>> selectTruck(int shop_code, String deliverydate) {
		System.out.println("들어옴 : "+shop_code+"/"+deliverydate);
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = new HashMap<>();
		map.put("shop_code", shop_code);
		map.put("deliverydate", deliverydate);
		System.out.println("잘 들어갔니? : "+map.toString());
		List<Map<String, Object>>list = dao.selectTruck(map);
		return list;
	}

	public List<Map<String, Object>> getShopList() {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Map<String, Object>>list = dao.getShopList();
		return list;
	}

	public List<String> getTruckList() {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<String>list = dao.getTruckList();
		return list;
	}

	public List<Map<String, Object>> reserveTruckList(String dDate, String office, String truck) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, Object> map = new HashMap<>();
		map.put("dDate", dDate);
		map.put("office", office);
		map.put("truck", truck);
		List<Map<String, Object>>list = dao.reserveTruckList(map);
		return list;
	}

	public List<Truck> truckCapa(String truck_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Truck> list = dao.truckCapa(truck_code);
		return list;
	}

	public List<Integer> originQCapa(String truck_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Integer>list = dao.originQCapa(truck_code);
		return list;
	}

	public int updateShipping(Shipping shipping) {
		System.out.println("repo들어옴");
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		System.out.println("repo : "+shipping.toString());
		int result = dao.updateShipping(shipping);
		System.out.println("repo 결과 : "+result);
		System.out.println("repo나감");
		return result;
	}

	public List<Shipping> truckListSearch(String deliverydate, String truck_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, String>map = new HashMap<>();
		map.put("deliverydate", deliverydate);
		map.put("truck_code", truck_code);
		List<Shipping>list = dao.truckListSearch(map);
		return list;
	}
	
	public List<Section> getOriginImg() {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Section>list = dao.getOriginImg();
		return list;
	}

	public List<Integer> warehouseUsage(int warehouse_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Integer> result = dao.warehouseUsage(warehouse_code);
		return result;
	}

	public List<Integer> ramenStock(String warehouse_code, String r_num) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		Map<String, String> map = new HashMap<>();
		map.put("warehouse_code", warehouse_code);
		map.put("r_num", r_num);
		List<Integer>list = dao.ramenStock(map);
		return list;
	}

	public List<Integer> getAllQuantity(String warehouse_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Integer>list = dao.getAllQuantity(warehouse_code);
		return list;
	}

	public List<Map<String, Object>> sectionInfo(int sec_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Map<String, Object>> map = dao.sectionInfo(sec_code);
		return map;
	}

	public List<Integer> sectionStock(int sec_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Integer>list = dao.sectionStock(sec_code);
		return list;
	}
	
	public List<Integer> getSectionP(int sec_code) {
		LogisticsDAO dao = sqlSession.getMapper(LogisticsDAO.class);
		List<Integer>list = dao.getSectionP(sec_code);
		return list;
	}

}
