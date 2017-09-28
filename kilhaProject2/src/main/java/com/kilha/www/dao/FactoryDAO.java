package com.kilha.www.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kilha.www.vo.Purchase.RM_daily_price;
import com.kilha.www.vo.product.*;

public interface FactoryDAO {
	
	//공장 정보 출력
	public FactoryVO Factory_info(int f_num);
	
	//전체 라면 상품 정보 출력
	public List<RamenVO> Ramen_info(String r_factory);
	
	//특정 라면 상품 정보 출력
	public RamenVO selectRamen(Map map);
	
	//모든 일단위 생산 정보 출력
	public List<ProductinfoVO> allProduct();
	
	//해당 공장의 일 단위 생산 정보 출력
	public List<ProductVO> Dailyproduct(Map map);
	
	//해당 공장, 해당 제품, 해당 일자 관련 생산 정보 출력
	public List<ProductVO> SelectDailyproduct1(Map map);
	
	//해당 공장, 해당 제품, 해당 일자, 해당 라인 관련 생산 정보 출력
	public List<ProductVO> SelectDailyproduct2(Map map);
	
	//해달 라인 생산량
	public int Counting(Map map);
	
	//생산효율지표 계산을 위한 수치
	public ProductinfoVO EfficiencyData(Map map);
	
	//각 제품의 레시피 정보 가져오기
	public RecipeVO getRecipe(Map map);
	
	
	//totalinfo를 list로 가져옴
	public List<TotalinfoVO> getTotalInfo();
	
	
	//구매단 과 합치는 test
	//선택한 재료의 해당 날짜의 가격 정보를 가져온다.
	public MaterialPriceVO getPrice(HashMap map);
	
	
	public List<TotalinfoVO> getTotalPrice(TotalinfoVO totalinfo);
	
	
	//회귀 분석을 위한 투입인원 데이터셋
	public List<TotalinfoVO> getInputMan(String r_name);
	//회귀분석을 위한 비용 데이터셋
	public List<TotalinfoVO> getCost(String r_name);
	//회귀분석을 위한 생산기간 데이터 셋
	public List<TotalinfoVO> getTime(String r_name);
	
	
	//재고 리스트 출력
	public List<InventoryVO> getInventory();
	public int regist(ProductinfoVO product);
	public List<ProductinfoVO> list();
	
	//종합정보 insert
	public int totalInsert(TotalinfoVO totalinfo);
	
	//해당날짜의 구매내역 갯수로 가져오기 (유효성 검사)
	public int countPur(TotalinfoVO totalinfo);
	
	//해당 재료의 현재 재고량 가져오기
	public InventoryVO materialAmount(HashMap map);
	
	//사용한 재료량 업데이트
	public int updateInven(Map map);
	
	public List<FactoryVO> factoryDetail();

}
