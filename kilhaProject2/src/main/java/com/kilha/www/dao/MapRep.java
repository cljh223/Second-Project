package com.kilha.www.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kilha.www.vo.common.Product;
import com.kilha.www.vo.common.Staff;
import com.kilha.www.vo.logistics.Stock;
import com.kilha.www.vo.sal.Kpi;
import com.kilha.www.vo.sal.Kpidivision;
import com.kilha.www.vo.sal.Process;
import com.kilha.www.vo.sal.ProcessTableVo;
import com.kilha.www.vo.sal.Shop;
import com.kilha.www.vo.sal.Supply;
import com.kilha.www.vo.sal.SupplyVo;

@Repository
public class MapRep {
	@Autowired
	SqlSession sqlSession;

	public List<Shop> markerSelect() {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.markerSelect();
	}

	public List<Stock> warehouseSelect(String searchText) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.warehouseSelect(searchText);
	}

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
	
	public boolean processAdd(Map<String, String>processMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		System.out.println(processMap.get("shopCode"));
		if(dao.processAdd(processMap)>0){
			return true;
		}
		return false;
	}
	
	public String shopNameSelect(int shopCode){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.shopNameSelect(shopCode);
	}
	
	public boolean supplyAdd(Map supplyMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		if(dao.supplyAdd(supplyMap)>0){
			return true;
		}
		return false;
	}
	
	public SupplyVo popupNowEstimate(Map estimateMap){
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.popupNowEstimate(estimateMap);
	}

	public List<SupplyVo> popupAllEstimateView(Map estimateMap) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.popupAllEstimateView(estimateMap);
	}

	public List<SupplyVo> processInitialize(Map processListMap) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.processInitialize(processListMap);
	}

	public Process processCodeSelect(String processCode) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.processCodeSelect(processCode);
	}

	public List<SupplyVo> shopDetailSelect(Map map) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.shopDetailSelect(map);
	}

	public SupplyVo contactsViewFunction(int shopCode) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.contactsViewFunction(shopCode);
	}

	public List<SupplyVo> processViewFunction(Map processListMap) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.processViewFunction(processListMap);
	}

	public List<Process> chartSelect(Map codeMap) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.chartSelect(codeMap);
	}

	public int processSelect(int shopCode) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.processSelect(shopCode);
	}

	public List<String> overviewIntiFunction(int shopCode) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.overviewIntiFunction(shopCode);
	}

	public List<Kpidivision> kpiSelect(Map codeMap) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.kpiSelect(codeMap);
	}

	public Shop updateViewFunction(int shopCode) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.updateViewFunction(shopCode);
	}

	public int kpiSettingFunction(Map map) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.kpiSettingFunction(map);
	}

	public ProcessTableVo processTable(String processCode) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.processTable(processCode);
	}

	public List<Shop> shopDetailSelect2() {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.shopDetailSelect2();
	}

	public List<SupplyVo> compareChartDateFunction(int shopCode) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.compareChartDateFunction(shopCode);
	}

	public List<Process> chartSelect2(Map codeMap) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.chartSelect2(codeMap);
	}

	public int kpiAdd(Map map) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.kpiAdd(map);
	}

	public int insertNewShop(Map map) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.insertNewShop(map);
	}

	public int insertNewAddress(Map map) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.insertNewAddress(map);
	}

	public List<Supply> supplyTableSetting(String processCode) {
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		return dao.supplyTableSetting(processCode);
	}
	
	public List<Shop> shopDetailSelect3(String shopName) {
		// TODO Auto-generated method stub
		MapDAO dao = sqlSession.getMapper(MapDAO.class);
		Map<String, String> map = new HashMap<>();
		map.put("shopName", shopName);
		return dao.shopDetailSelect3(map);
	}
	
}
