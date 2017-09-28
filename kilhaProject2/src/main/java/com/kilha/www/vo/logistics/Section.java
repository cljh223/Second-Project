package com.kilha.www.vo.logistics;

public class Section {
	private int sec_code;
	private int warehouse_code;
	private String sec_name;
	private String r_num;
	private int locationX1;
	private int locationY1;
	private int locationX2;
	private int locationY2;
	
	public Section() {
		// TODO Auto-generated constructor stub
	}

	public int getSec_code() {
		return sec_code;
	}

	public void setSec_code(int sec_code) {
		this.sec_code = sec_code;
	}

	public int getWarehouse_code() {
		return warehouse_code;
	}

	public void setWarehouse_code(int warehouse_code) {
		this.warehouse_code = warehouse_code;
	}

	public String getSec_name() {
		return sec_name;
	}

	public void setSec_name(String sec_name) {
		this.sec_name = sec_name;
	}

	public String getR_num() {
		return r_num;
	}

	public void setR_num(String r_num) {
		this.r_num = r_num;
	}

	public int getLocationX1() {
		return locationX1;
	}

	public void setLocationX1(int locationX1) {
		this.locationX1 = locationX1;
	}

	public int getLocationY1() {
		return locationY1;
	}

	public void setLocationY1(int locationY1) {
		this.locationY1 = locationY1;
	}

	public int getLocationX2() {
		return locationX2;
	}

	public void setLocationX2(int locationX2) {
		this.locationX2 = locationX2;
	}

	public int getLocationY2() {
		return locationY2;
	}

	public void setLocationY2(int locationY2) {
		this.locationY2 = locationY2;
	}

	@Override
	public String toString() {
		return "section [sec_code=" + sec_code + ", warehouse_code=" + warehouse_code + ", sec_name=" + sec_name
				+ ", r_num=" + r_num + ", locationX1=" + locationX1 + ", locationY1=" + locationY1 + ", locationX2="
				+ locationX2 + ", locationY2=" + locationY2 + "]";
	}
	
	
}
