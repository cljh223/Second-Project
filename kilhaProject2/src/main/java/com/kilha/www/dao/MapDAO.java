package com.kilha.www.dao;

import java.util.List;

import com.kilha.www.vo.Product;
import com.kilha.www.vo.Shop;
import com.kilha.www.vo.Staff;
import com.kilha.www.vo.Warehouse;

public interface MapDAO {
	public List<Shop> markerSelect();
	public List<Warehouse> warehouseSelect(String searchText);
	public List<Staff> staffSelect(String searchText);
	public List<Shop> shopSelect(String searchText);
	public List<Product> productSelect(String searchText);
}
