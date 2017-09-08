package com.kilha.www.dao;
import java.util.List;

import com.kilha.www.vo.*;

public interface FactoryDAO {
	
	//공장 기본 정보 select
	public FactoryVO factory1(int a);
	
	
	//어제 기준 일 단위 생산 정보 출력
	public List<ProductVO> Dailyproduct();
}
