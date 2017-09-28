package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Section;
import com.kilha.www.vo.logistics.Shipping;
import com.kilha.www.vo.logistics.Truck;


public interface LogisticsDAO {

	public int ordering(Shipping shipping);

	public List<Map<String, Object>> myOrderList(int userid);

	public Staff loginCheck(Map<String, Object> map);

	public Map<String, Object> selectOne(int orderNum);

	public List<Map<String, Object>> resultList();

	public int updateList(Map<String, Object> map);

	public int deleteList(String process_code);

	public Staff searchDept(int userid);

	public List<Map<String, Object>> selectTruck(Map<String, Object> map);

	public List<Map<String, Object>> getShopList();

	public List<String> getTruckList();

	public List<Map<String, Object>> reserveTruckList(Map<String, Object> map);

	public List<Truck> truckCapa(String truck_code);

	public List<Integer> originQCapa(String truck_code);

	public int updateShipping(Shipping shipping);

	public List<Shipping> truckListSearch(Map<String, String> map);
	
	public List<Section> getOriginImg();

	public List<Integer> warehouseUsage(int warehouse_code);

	public List<Integer> ramenStock(Map<String, String> map);

	public List<Integer> getAllQuantity(String warehouse_code);

	public List<Map<String, Object>> sectionInfo(int sec_code);

	public List<Integer> sectionStock(int sec_code);
	
	public List<Integer> getSectionP(int sec_code);


}
