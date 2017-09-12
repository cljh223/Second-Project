package com.kilha.www.dao;
import java.util.List;

import com.kilha.www.vo.product.FactoryVO;
import com.kilha.www.vo.product.ProductVO;

public interface FactoryDAO {
	
	//���� �⺻ ���� select
	public FactoryVO factory1(int a);
	
	
	//���� ���� �� ���� ���� ���� ���
	public List<ProductVO> Dailyproduct();
}
