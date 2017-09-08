package com.kilha.www.vo.logistics;

public class Stock {
	private int stockNum;
	private int lockNum;
	private int quantity;
	private String goods;
	private String inputdate;
	private int warehouse_code;
	
	public Stock() {
		// TODO Auto-generated constructor stub
	}

	public int getStockNum() {
		return stockNum;
	}

	public void setStockNum(int stockNum) {
		this.stockNum = stockNum;
	}

	public int getLockNum() {
		return lockNum;
	}

	public void setLockNum(int lockNum) {
		this.lockNum = lockNum;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getGoods() {
		return goods;
	}

	public void setGoods(String goods) {
		this.goods = goods;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public int getWarehouse_code() {
		return warehouse_code;
	}

	public void setWarehouse_code(int facility_code) {
		this.warehouse_code = facility_code;
	}

	@Override
	public String toString() {
		return "warehouse [stockNum=" + stockNum + ", lockNum=" + lockNum + ", quantity=" + quantity + ", goods="
				+ goods + ", inputdate=" + inputdate + ", facility_code=" + warehouse_code + "]";
	}
	
}
