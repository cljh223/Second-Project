package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Shipping;


public interface LogisticsDAO {

	public int ordering(Shipping shipping);

	public List<Shipping> myOrderList(int userid);

	public Staff loginCheck(Map<String, Object> map);

	public Shipping selectOne(int orderNum);

	public List<Shipping> resultList(String status);

	public int updateList(Map<String, Object> map);

	public int deleteList(int orderNum);

}
