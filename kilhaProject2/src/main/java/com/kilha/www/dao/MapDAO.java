package com.kilha.www.dao;

import java.util.List;
import java.util.Map;

import com.kilha.www.vo.common.Product;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.sal.Kpi;
import com.kilha.www.vo.sal.Kpidivision;
import com.kilha.www.vo.sal.Process;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.Supply;
import com.kilha.www.vo.sal.SupplyVo;

public interface MapDAO {
	public List<Shop> markerSelect();
	public List<Stock> warehouseSelect(String searchText);
	public List<Staff> staffSelect(String searchText);
	public List<Shop> shopSelect(String searchText);
	public List<Product> productSelect(String searchText);
	public int processAdd(Map<String, String>processMap);
	public String shopNameSelect(int shopCode);
	public int supplyAdd(Map supplyMap);
	public SupplyVo popupNowEstimate(Map estimateMap);
	public List<SupplyVo> popupAllEstimateView(Map estimateMap);
	public List<SupplyVo> processInitialize(Map processListMap);
	public Process processCodeSelect(String processCode);
	public List<SupplyVo> shopDetailSelect(Map map);
	public SupplyVo contactsViewFunction(int shopCode);
	public List<SupplyVo> processViewFunction(Map processListMap);
	public List<Process> chartSelect(Map codeMap);
	public int processSelect(int shopCode);
	public List<String> overviewIntiFunction(int shopCode);
	public List<Kpidivision> kpiSelect(Map codeMap);
	public Shop updateViewFunction(int shopCode);
	public int kpiSettingFunction(int shopCode);
}
