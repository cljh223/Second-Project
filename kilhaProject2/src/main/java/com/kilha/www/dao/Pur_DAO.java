package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import com.kilha.www.vo.Purchase.OrderRecords;
import com.kilha.www.vo.Purchase.OrderRecords_Detail;
import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;
import com.kilha.www.vo.common.Staff;

public interface Pur_DAO {

	

	public List<RawMaterials> rmList();

	public List<RM_daily_price> rmChart(String rmname);

	public List<RawMaterials> popupsearch(String searchText);

	public int AddTradeRecords(TradeRecords tr);

	public RawMaterials selectRM(String rmname);

	public int AddRawMaterials(Map rmupdateMap);

	public List<TradeRecords> trList();

	public List<Staff> StaffList();

	public List<Staff> staffsearch(String searchText3);

	public Staff fineonestaff(String staffname);

	public int insertorder(OrderRecords OR);

	public int insertorderdetail(OrderRecords_Detail ORD);

	public int ordercount();

	public List<OrderRecords> orderlist();

	public Staff findstaffbynum(int tempstaff);

	public OrderRecords getbasicrecord(String taskcode);

	public List<OrderRecords_Detail> getdetailrecord(String taskcode);
	
}
