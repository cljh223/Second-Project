package com.kilha.www.dao;
import java.util.List;
import java.util.Map;

import com.kilha.www.vo.product.*;

public interface FactoryDAO {
	
	//공장 정보 출력
	public FactoryVO Factory_info(int a);
	
	//전체 라면 상품 정보 출력
	public List<RamenVO> Ramen_info(String r_factory);
	
	//특정 라면 상품 정보 출력
	public RamenVO selectRamen(Map map);
	
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
}
