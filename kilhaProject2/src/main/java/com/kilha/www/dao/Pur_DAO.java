package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.Purchase.RawMaterials;
import com.kilha.www.vo.Purchase.TradeRecords;

public interface Pur_DAO {

	

	public List<RawMaterials> rmList();

	public List<RM_daily_price> rmChart(String rmname);

	public List<RawMaterials> popupsearch(String searchText);

	public int AddTradeRecords(TradeRecords tr);

	public RawMaterials selectRM(String rmname);

	public int AddRawMaterials(Map rmupdateMap);
	
}
