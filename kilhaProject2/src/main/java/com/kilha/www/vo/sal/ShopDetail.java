package com.kilha.www.vo.sal;

public class ShopDetail {
	private String shop_name;
	private String shop_code;
	private String shop_rep;
	private String shop_state;
	private String shop_term; // 거래기간
	private String late_term; // 최근거래 날짜
	private String late_process; //최근 거래 종류
	private int month_sales; //이번 달 판매량
	private int month_earn; //이번 달 수익
	public ShopDetail() {
		super();
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_code() {
		return shop_code;
	}
	public void setShop_code(String shop_code) {
		this.shop_code = shop_code;
	}
	public String getShop_rep() {
		return shop_rep;
	}
	public void setShop_rep(String shop_rep) {
		this.shop_rep = shop_rep;
	}
	public String getShop_state() {
		return shop_state;
	}
	public void setShop_state(String shop_state) {
		this.shop_state = shop_state;
	}
	public String getShop_term() {
		return shop_term;
	}
	public void setShop_term(String shop_term) {
		this.shop_term = shop_term;
	}
	public String getLate_term() {
		return late_term;
	}
	public void setLate_term(String late_term) {
		this.late_term = late_term;
	}
	public String getLate_process() {
		return late_process;
	}
	public void setLate_process(String late_process) {
		this.late_process = late_process;
	}
	public int getMonth_sales() {
		return month_sales;
	}
	public void setMonth_sales(int month_sales) {
		this.month_sales = month_sales;
	}
	public int getMonth_earn() {
		return month_earn;
	}
	public void setMonth_earn(int month_earn) {
		this.month_earn = month_earn;
	}
	@Override
	public String toString() {
		return "ShopDetail [shop_name=" + shop_name + ", shop_code=" + shop_code + ", shop_rep=" + shop_rep
				+ ", shop_state=" + shop_state + ", shop_term=" + shop_term + ", late_term=" + late_term
				+ ", late_process=" + late_process + ", month_sales=" + month_sales + ", month_earn=" + month_earn
				+ "]";
	}
	
	
}
